drawing
drawOn: canvas
	| x y cellWidth cellHeight rowsToDisplay rowSubviews selectionIndex |
	self bounds ifNil: [ ^ self ].	"Nothing to show yet"
	self owner ifNil: [ ^ self ].
	x := self left + 2.
	y := self top.
	cellWidth := self width - 2.
	cellHeight := self owner rowHeight.
	selectionIndex := self owner selectedRowIndex.

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
					| visibleHeight |
					visibleHeight := cellHeight min: self bottom - y.
					row topLeft: (x + row left) @ y.
					y := y + visibleHeight.
					rowSubviews
						add:
							(selectionIndex = rowIndex
								ifTrue: [ self asSelectedMorph: (row privateOwner: nil) ]
								ifFalse: [ row ])
					"IMPORTANT: I need to set owner to nil because otherwise it
			will trigger an invalidation of the owner when adding morph to
			selectionMorph, causing an infinite loop." ].
			submorphs := rowSubviews asArray ].
	super drawOn: canvas.
	needsRefreshExposedItems := false