drawing
drawSubmorphsOn: canvas
	"Check that we have updated something one way or another before aligning / reordering our items."

	"We need to protect ourselves against spurious updates; a lot of Morphic
	code call self changed like a prayer, even if apparently not needed. As in,
	let's call changed, just, like, well, it could be needed?"

	| x y rowsToDisplay rowSubviews selectionIndex dropIndex |
	self bounds ifNil: [ ^ self ].	"Nothing to show yet"
	self owner ifNil: [ ^ self ].
	self updateItemsOrRows
		ifTrue:
			[ rowsToDisplay := self exposedItems keys asSortedCollection asArray.	"Do not rely on exposedItems ordering"
			rowSubviews := OrderedCollection new: rowsToDisplay size + 1.
			x := self left + 2 - self leftOffset.
			y := self top + topOffset.
			selectionIndex := self owner selectedRowIndex.
			dropIndex := self owner dropIndex.
			rowsToDisplay
				do: [ :rowIndex | 
					| row |
					row := self exposedItems at: rowIndex.
					row privateOwner: nil.
					row topLeft: x @ y.
					y := y + row height.
					selectionIndex = rowIndex
						ifTrue: [ row color: self owner selectionColor ]
						ifFalse: [ row color: Color transparent ].
					dropIndex = rowIndex
						ifTrue: [ row highlightForDrop: true ]
						ifFalse: [ row highlightForDrop: false ].
					row privateOwner: self.
					rowSubviews add: row ].
			submorphs := rowSubviews asArray ].
	super drawSubmorphsOn: canvas.
	needsRefreshRows := false