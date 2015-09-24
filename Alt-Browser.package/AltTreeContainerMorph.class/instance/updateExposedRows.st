updating
updateExposedRows
	"This is where we need to ask for displaying rows."

	| visibleRows startIndex previousRow |
	self canRefreshValues
		ifFalse: [ ^ self ].
	visibleRows := self calculateMaxVisibleRows.
	startIndex := self calculateStartIndexWhenShowing: visibleRows.
	exposedRows := SmallDictionary new.
	startIndex to:
		(startIndex + visibleRows - 1 min: self owner numberOfRows) do:
		[ :rowIndex | 
		| row item |
		row := (self indentingItemClass new
			initWithContents: (item := self owner dataSource itemFor: rowIndex)
			prior: previousRow
			forList: self
			indentLevel: (self indentLevelFor: item)) privateOwner: self.
		exposedRows at: rowIndex put: row.
		previousRow := row ]