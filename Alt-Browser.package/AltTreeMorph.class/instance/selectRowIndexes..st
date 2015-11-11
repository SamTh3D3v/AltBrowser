accessing-selection
selectRowIndexes: anArray
	| oldSelectedRowIndexes |
	anArray = self selectedRowIndexes
		ifTrue: [ ^ self ].
	oldSelectedRowIndexes := selectedRowIndexes.
	selectedRowIndexes := anArray asArray.
	self ensureVisibleSelection.
	self viewport changed.
	self
		doAnnounce:
			(AltSelectionChanged
				from: oldSelectedRowIndexes
				to: selectedRowIndexes)