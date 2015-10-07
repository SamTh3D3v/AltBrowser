testing
isRowIndexVisible: rowIndex
	self exposedItems ifNil: [ ^ false ].
	^ self exposedItems includesKey: rowIndex