testing
isRowIndexExceding: rowIndex
	| nextRowIndexByPosition heightWithSpacing |
	nextRowIndexByPosition := rowIndex - self owner showIndex + 1.
	heightWithSpacing := self owner rowHeight
		+ self owner intercellSpacing.
	^ nextRowIndexByPosition * heightWithSpacing > self height