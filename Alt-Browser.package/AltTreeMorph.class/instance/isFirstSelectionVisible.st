testing
isFirstSelectionVisible
	self hasSelection
		ifFalse: [ ^ true ].
	^ (self viewport isRowIndexFullyVisible: self selectedRowIndex)
		and: [ self viewport isItemFullyVisible: self selectedRowIndex ]