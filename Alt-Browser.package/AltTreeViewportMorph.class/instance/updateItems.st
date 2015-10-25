updating
updateItems
	"This is a full update from the model. Reset all cached data."

	| index iUp iDown y yDown yUp visibleHeight row delta |
	index := self baselineIndex.
	delta := self deltaFor: index.
	y := self baseline.
	exposedItems := SmallDictionary new.
	visibleHeight := self height.
	row := self rowMorphForItem: (self owner model at: index).
	exposedItems at: index put: row.
	yDown := (y + (row height * (1 - delta))) truncated.
	yUp := (y - (row height * delta)) truncated.
	iUp := index - 1.
	iDown := index.
	[ yUp > 0 and: [ iUp > 0 ] ]
		whileTrue:
			[ yUp := yUp - 2.
			row := self rowMorphForItem: (self owner model at: iUp).
			exposedItems at: iUp put: row.
			yUp := yUp - row height.
			iUp := iUp - 1 ].
	yUp > 0
		ifTrue: [ yDown := yDown - yUp.
			yUp := 0 ].	"Make sure there is no empty space on top."
	[ yDown < visibleHeight and: [ iDown < self modelSize ] ]
		whileTrue:
			[ iDown := iDown + 1.
			yDown := yDown + 2.
			row := self rowMorphForItem: (self owner model at: iDown).
			exposedItems at: iDown put: row.
			yDown := yDown + row height ].
	topOffset := yUp.
	bottomOffset := yDown.
	exposedItems values do: [ :each | each right: offsetWidth - 1 ].
	self owner resizeAllSubviews	"Force a recompute / display of the scrollbars."