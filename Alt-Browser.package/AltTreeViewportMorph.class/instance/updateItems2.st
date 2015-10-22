updating
updateItems2
	"This is a full update from the model. Reset all cached data."

	| index iUp iDown sz y yDown yUp visibleHeight row |
	index := self baselineIndex.
	exposedItems := SmallDictionary new.
	offsetWidth := self width.
	y := self baseline.
	visibleHeight := self height.
	row := self rowMorphForItem: (self owner model at: index).
	exposedItems at: index put: row.
	yDown := y + ((1 - verticalValue) * row height).
	yUp := y - (verticalValue * row height).
	iUp := index - 1.
	iDown := index.
	sz := self owner model size.
	[ yDown < visibleHeight and: [ iDown < sz ] ]
		whileTrue:
			[ iDown := iDown + 1.
			row := self rowMorphForItem: (self owner model at: iDown).
			exposedItems at: iDown put: row.
			y := y + row height + 2 ].
	[ yUp > 0 and: [ iUp > 0 ] ]
		whileTrue:
			[ row := self rowMorphForItem: (self owner model at: iUp).
			exposedItems at: iUp put: row.
			y := y - row height - 2.
			iUp := iUp - 1 ].
	exposedItems values do: [ :each | each right: offsetWidth - 1 ].
	self owner resizeAllSubviews