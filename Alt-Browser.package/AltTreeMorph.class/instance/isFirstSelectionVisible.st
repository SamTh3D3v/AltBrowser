testing
isFirstSelectionVisible
	self hasSelection
		ifFalse: [ ^ true ].
	^ self container isRowIndexFullyVisible: self selectedRowIndex