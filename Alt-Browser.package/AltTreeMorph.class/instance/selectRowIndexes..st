accessing-selection
selectRowIndexes: anArray
	| oldSelectedRowIndexes |
	anArray = selectedRowIndexes
		ifTrue: [ ^ self ].
	oldSelectedRowIndexes := selectedRowIndexes.
	selectedRowIndexes := anArray asArray.
	self ensureVisibleFirstSelection.
	self viewport changed.
	self
		doAnnounce:
			(AltSelectionChanged
				from: oldSelectedRowIndexes
				to: selectedRowIndexes)