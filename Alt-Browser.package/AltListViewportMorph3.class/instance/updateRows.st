as yet unclassified
updateRows
	"Model hasn't changed, just complement missing rows."

	| index iUp iDown yDown yUp visibleHeight row oldExposedItems upStream downStream |
	index := self baselineIndex.
	oldExposedItems := exposedItems.
	exposedItems := SmallDictionary new.
	visibleHeight := self height.
	row := oldExposedItems
		at: index
		ifAbsent: [ self rowMorphForItem: (self owner model at: index) ].
	exposedItems at: index put: row.
	yUp := self getRowTop: row height.
	yDown := yUp + row height.
	iUp := index - 1.
	upStream := self owner model asReverseReadStream
		skip: self modelSize - iUp;
		yourself.
	iDown := index.
	downStream := self owner model asReadStream
		skip: iDown;
		yourself.
	[ yDown < visibleHeight and: [ downStream atEnd not ] ]
		whileTrue: [ | item |
			iDown := iDown + 1.
			item := downStream next.
			row := oldExposedItems
				at: iDown
				ifAbsent: [ self rowMorphForItem: item ].
			exposedItems at: iDown put: row.
			yDown := yDown + row height ].
	(downStream atEnd
		and: [ yDown < visibleHeight and: [ upStream atEnd not ] ])
		ifTrue: [ yUp := yUp + visibleHeight - yDown.
			[ yUp > 0 and: [ upStream atEnd not ] ]
				whileTrue: [ | item |
					item := upStream next.
					row := oldExposedItems
						at: iUp
						ifAbsent: [ self rowMorphForItem: item ].
					exposedItems at: iUp put: row.
					yUp := yUp - row height.
					iUp := iUp - 1 ] ].
	yUp > 0
		ifTrue: [ yDown := yDown - yUp.
			yUp := 0 ].	"Make sure there is no empty space on top."
	topOffset := yUp.
	bottomOffset := yDown.
	exposedItems values
		do: [ :each | each width: self effectiveWidth - 2 ]