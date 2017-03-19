drawing
drawSubmorphsOn: canvas
	"Check that we have updated something one way or another before aligning / reordering our items."

	"We need to protect ourselves against spurious updates; a lot of Morphic
	code call self changed like a prayer, even if apparently not needed. As in,
	let's call changed, just, like, well, it could be needed?"

	| x y rowsToDisplay rowSubviews |
	self bounds ifNil: [ ^ self ].	"Nothing to show yet"
	self owner ifNil: [ ^ self ].
	self updateItemsOrRows
		ifTrue:
			[ rowsToDisplay := self exposedItems keys asSortedCollection asArray.	"Do not rely on exposedItems ordering"
			rowSubviews := OrderedCollection new: rowsToDisplay size + 1.
			x := self left + 2 - self leftOffset.
			y := self top + topOffset.
			rowsToDisplay
				do: [ :rowIndex | 
					| row |
					row := self exposedItems at: rowIndex.
					row privateOwner: nil.
					row topLeft: x @ y.
					y := y + row height.
					row privateOwner: self.
					rowSubviews add: row ].
			submorphs := rowSubviews asArray ].
	super drawSubmorphsOn: canvas.
	(self exposedItems at: self owner selectedRowIndex ifAbsent: [  ])
		ifNotNil: [ :selectedRow | 
			canvas
				frameAndFillRectangle: selectedRow bounds
				fillColor: (self owner selectionColor alpha: 0.3)
				borderWidth: 1
				borderColor: self owner selectionColor ].
	(self exposedItems at: self owner dropIndex ifAbsent: [  ])
		ifNotNil: [ :dropRow | 
			canvas
				frameAndFillRectangle: dropRow bounds
				fillColor: Color transparent
				borderWidth: 1
				borderColor: self owner selectionColor ].
	self owner resizeAllSubviews.	"Force a recompute / display of the scrollbars."
	needsRefreshRows := false