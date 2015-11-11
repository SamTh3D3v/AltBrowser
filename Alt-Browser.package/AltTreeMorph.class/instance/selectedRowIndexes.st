accessing-selection
selectedRowIndexes
	^ selectedRowIndexes
		ifNil: [ selectedRowIndexes := self model selectedIndex asArray ]