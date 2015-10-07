drawing
drawOn: canvas
	| x y cellWidth cellHeight rowsToDisplay rowSubviews selectionIndex |
	self bounds ifNil: [ ^ self ].	"Nothing to show yet"
	self owner ifNil: [ ^ self ].
	x := self left.
	y := self top.
	cellWidth := self width - self class rowLeftMargin.
	cellHeight := self owner rowHeight.
	selectionIndex := self owner selectedRowIndex.

	"For some superweird reason, calling #calculateExposedItems here
	instead of in #changed (where it should be called) is 10x faster."
	self updateItems.
	rowsToDisplay := self exposedItems.
	rowSubviews := OrderedCollection new: rowsToDisplay size + 1.
	rowsToDisplay
		keysAndValuesDo:
			[ :rowIndex :row | 
			| visibleHeight |
			visibleHeight := cellHeight min: self bottom - y.
			row bounds: (x @ y extent: cellWidth @ visibleHeight).
			y := y + visibleHeight + self owner intercellSpacing.
			rowSubviews
				add:
					(selectionIndex = rowIndex
						ifTrue: [ self asSelectedMorph: (row privateOwner: nil) ]
						ifFalse: [ row ])
			"IMPORTANT: I need to set owner to nil because otherwise it
			will trigger an invalidation of the owner when adding morph to
			selectionMorph, causing an infinite loop." ].
	self submorphs: rowSubviews asArray.
	super drawOn: canvas.
	needsRefreshExposedItems := false