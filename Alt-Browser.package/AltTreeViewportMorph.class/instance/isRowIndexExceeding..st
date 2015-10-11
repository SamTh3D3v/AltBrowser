testing
isRowIndexExceeding: rowIndex
	"Why don't I use my row cache for that or row bounds?"

	| row |
	row := exposedItems at: rowIndex.
	^ row bottom > self bottom