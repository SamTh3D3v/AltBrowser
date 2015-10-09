testing
isRowIndexExceding: rowIndex
	| nextRowIndexByPosition heightWithSpacing |
	nextRowIndexByPosition := rowIndex - self owner showIndex + 1.
	heightWithSpacing := self owner rowHeight.
	^ nextRowIndexByPosition * heightWithSpacing > self height