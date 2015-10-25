drawing
drawSubmorphsOn: canvas
	"Move the submorph handling code in its place?"

	| x y rowsToDisplay rowSubviews selectionIndex dropIndex |
	self bounds ifNil: [ ^ self ].	"Nothing to show yet"
	self owner ifNil: [ ^ self ].
	self updateItemsOrRows
		ifTrue:
			[ rowsToDisplay := self exposedItems keys asSortedCollection
				asArray.
			rowSubviews := OrderedCollection new: rowsToDisplay size + 1.
			x := self left + 2 - self leftOffset.
			y := self top + topOffset.
			selectionIndex := self owner selectedRowIndex.
			dropIndex := self owner dropIndex.
			rowsToDisplay
				do:
					[ :rowIndex | 
					| row |
					row := self exposedItems at: rowIndex.
					row topLeft: x @ y.
					y := y + row height + 2.
					selectionIndex = rowIndex
						ifTrue: [ row color: self owner selectionColor ]
						ifFalse: [ row color: Color transparent ].
					dropIndex = rowIndex
						ifTrue: [ row highlightForDrop: true ]
						ifFalse: [ row highlightForDrop: false ].
					rowSubviews add: row ].	"Beware of the ordering!"
			submorphs := rowSubviews asArray ].
	super drawSubmorphsOn: canvas.
	needsRefreshRows := false