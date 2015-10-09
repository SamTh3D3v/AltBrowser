accessing-selection
selectRowIndexes: anArray
	| oldSelectedRowIndexes |
	anArray = selectedRowIndexes
		ifTrue: [ ^ self ].
	oldSelectedRowIndexes := selectedRowIndexes.
	selectedRowIndexes := anArray asArray.
	self ensureVisibleFirstSelection.
	self refresh.
	self
		doAnnounce:
			(FTSelectionChanged from: oldSelectedRowIndexes to: selectedRowIndexes)