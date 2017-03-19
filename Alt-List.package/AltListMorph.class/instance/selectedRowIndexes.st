accessing-selection
selectedRowIndexes
	^ selectedRowIndexes
		ifNil: [ selectedRowIndexes := Array with: self model selectedIndex ]