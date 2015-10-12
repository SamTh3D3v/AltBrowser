drawing
drawSubmorphsOn: canvas
	"Move the submorph handling code in its place?"

	| x y rowsToDisplay rowSubviews selectionIndex dropIndex |
	self bounds ifNil: [ ^ self ].	"Nothing to show yet"
	self owner ifNil: [ ^ self ].
	x := self left + 2 - self leftOffset.
	y := self top.
	selectionIndex := self owner selectedRowIndex.
	dropIndex := self owner dropIndex.
	"Ok, in #fullDrawOn:, we have #drawSubmorphsOn: which is called before #drawOn:... "
	self updateItems
		ifTrue:
			[ rowsToDisplay := self exposedItems.
			rowSubviews := OrderedCollection new: rowsToDisplay size + 1.
			"Two things: this is called multiple times when displaying."
			"Result: coordinates is done at least twice."
			"Original code is lucky that set bounds is so destructive."
			"I'm certainly still going through there twice. Why?"
			rowsToDisplay
				keysAndValuesDo:
					[ :rowIndex :row | 
					row topLeft: x @ y.
					y := y + row height.
					selectionIndex = rowIndex
						ifTrue: [ row color: self owner selectionColor ].
					dropIndex = rowIndex
						ifTrue: [ row highlightForDrop: true ].
					rowSubviews add: row ].
			submorphs := rowSubviews asArray ].
	super drawSubmorphsOn: canvas.
	needsRefreshExposedItems := false