drawing
drawSubmorphsOn: canvas
	"Move the submorph handling code in its place?"

	| x y cellWidth cellHeight rowsToDisplay rowSubviews selectionIndex |
	self bounds ifNil: [ ^ self ].	"Nothing to show yet"
	self owner ifNil: [ ^ self ].
	x := self left + 2.
	y := self top.
	cellWidth := self width - 2.
	cellHeight := self owner rowHeight.
	selectionIndex := self owner selectedRowIndex.
	"Ok, in #fullDrawOn:, we have #drawSubmorphsOn: which is called before #drawOn:... "

	"For some superweird reason, calling #calculateExposedItems here
	instead of in #changed (where it should be called) is 10x faster."
	self updateItems
		ifTrue:
			[ rowsToDisplay := self exposedItems.
			rowSubviews := OrderedCollection new: rowsToDisplay size + 1.
			"Two things: this is called multiple times when displaying."
			"Result: coordinates is done at least twice."
			"Original code is lucky that set bounds is so destructive."
			rowsToDisplay
				keysAndValuesDo:
					[ :rowIndex :row | 
					row topLeft: (x + row left) @ y.
					y := y + row height.
					selectionIndex = rowIndex
						ifTrue: [ row color: self owner selectionColor ].
					rowSubviews add: row ].
			submorphs := rowSubviews asArray ].
	super drawSubmorphsOn: canvas.
	needsRefreshExposedItems := false