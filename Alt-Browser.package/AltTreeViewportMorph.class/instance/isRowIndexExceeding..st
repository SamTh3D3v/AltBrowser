testing
isRowIndexExceeding: rowIndex
	| row |
	row := exposedItems at: rowIndex.
	^ row bottom > self bottom