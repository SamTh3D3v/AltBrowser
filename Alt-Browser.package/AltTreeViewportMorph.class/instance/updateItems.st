updating
updateItems
	"This is a full update from the model. Reset all cached data."

	| index iUp iDown sz y yDown yUp visibleHeight row |
	index := self baselineIndex.
	y := self baseline.
	exposedItems := SmallDictionary new.
	offsetWidth := self width.
	visibleHeight := self height.
	row := self rowMorphForItem: (self owner model at: index).
	exposedItems at: index put: row.
	yDown := y + (row height * (1 - verticalValue)).
	yUp := y  - (row height * verticalValue).
	iUp := index - 1.
	iDown := index.
	sz := self owner model size.
	[ yDown < visibleHeight and: [ iDown < sz ] ]
		whileTrue:
			[ iDown := iDown + 1.
			yDown := yDown + 2.
			row := self rowMorphForItem: (self owner model at: iDown).
			exposedItems at: iDown put: row.
			yDown := yDown + row height ].
	[ yUp > 0 and: [ iUp > 0 ] ]
		whileTrue:
			[ yUp := yUp - 2.
			row := self rowMorphForItem: (self owner model at: iUp).
			exposedItems at: iUp put: row.
			yUp := yUp - row height.
			iUp := iUp - 1 ].
	yUp > 0
		ifTrue:
			[ self verticalValue: 0.0.
			self owner verticalScrollBar value: 0.
			topOffset := 0.
			bottomOffset := yDown - yUp ]
		ifFalse: [ topOffset := yUp.
			bottomOffset := yDown ].
	Transcript show: 'topOffset: '.
	topOffset logCr.
	exposedItems values do: [ :each | each right: offsetWidth - 1 ].
	self owner resizeAllSubviews