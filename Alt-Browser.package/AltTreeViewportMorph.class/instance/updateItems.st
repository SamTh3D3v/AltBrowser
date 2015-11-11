updating
updateItems
	"This is a full update from the model. Reset all cached data."

	| index iUp iDown y yDown yUp visibleHeight row delta upStream downStream |
	index := self baselineIndex.
	delta := self deltaFor: index.
	y := self baseline.
	exposedItems := SmallDictionary new.
	visibleHeight := self height.
	maximumWidth := 0.
	row := self rowMorphForItem: (self owner model at: index).
	exposedItems at: index put: row.
	yDown := (y + (row height * (1 - delta))) truncated.
	yUp := (y - (row height * delta)) truncated.
	iUp := index - 1.
	upStream := self owner model asReverseReadStream.
	upStream skip: self modelSize - iUp.
	iDown := index.
	downStream := self owner model asReadStream.
	downStream skip: iDown.
	[ yUp > 0 and: [ upStream atEnd not ] ]
		whileTrue:
			[ row := self rowMorphForItem: upStream next.
			exposedItems at: iUp put: row.
			yUp := yUp - row height.
			iUp := iUp - 1 ].
	yUp > 0
		ifTrue: [ yDown := yDown - yUp.
			yUp := 0 ].	"Make sure there is no empty space on top."
	[ yDown < visibleHeight and: [ downStream atEnd not ] ]
		whileTrue:
			[ iDown := iDown + 1.
			row := self rowMorphForItem: downStream next.
			exposedItems at: iDown put: row.
			yDown := yDown + row height ].
	topOffset := yUp.
	bottomOffset := yDown.
	exposedItems values
		do: [ :each | each width: self effectiveWidth - 2 ].
	self owner resizeAllSubviews	"Force a recompute / display of the scrollbars."