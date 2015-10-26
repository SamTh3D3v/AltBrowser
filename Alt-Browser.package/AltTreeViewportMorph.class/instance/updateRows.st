updating
updateRows
	"Model hasn't changed, just complement missing rows."

	| index iUp iDown y yDown yUp visibleHeight row delta oldExposedItems upStream downStream |
	index := self baselineIndex.
	delta := self deltaFor: index.
	y := self baseline.
	oldExposedItems := exposedItems.
	exposedItems := SmallDictionary new.
	visibleHeight := self height.
	row := oldExposedItems
		at: index
		ifAbsent: [ self rowMorphForItem: (self owner model at: index) ].
	exposedItems at: index put: row.
	yDown := (y + (row height * (1 - delta))) truncated.
	yUp := (y - (row height * delta)) truncated.
	iUp := index - 1.
	upStream := (AltTreeReverseReadStream on: self owner model)
		skip: self modelSize - iUp;
		yourself.
	iDown := index.
	downStream := (AltTreeReadStream on: self owner model)
		skip: iDown;
		yourself.
	[ yUp > 0 and: [ upStream atEnd not ] ]
		whileTrue:
			[ | item |
			yUp := yUp - 2.
			item := upStream next.
			row := oldExposedItems
				at: iUp
				ifAbsent: [ self rowMorphForItem: item ].
			exposedItems at: iUp put: row.
			yUp := yUp - row height.
			iUp := iUp - 1 ].
	yUp > 0
		ifTrue: [ yDown := yDown - yUp.
			yUp := 0 ].	"Make sure there is no empty space on top."
	[ yDown < visibleHeight and: [ downStream atEnd not ] ]
		whileTrue:
			[ | item |
			iDown := iDown + 1.
			yDown := yDown + 2.
			item := downStream next.
			row := oldExposedItems
				at: iDown
				ifAbsent: [ self rowMorphForItem: item ].
			exposedItems at: iDown put: row.
			yDown := yDown + row height ].
	topOffset := yUp.
	bottomOffset := yDown.
	exposedItems values do: [ :each | each right: offsetWidth - 1 ].
	self owner resizeAllSubviews	"Force a recompute / display of the scrollbars."