accessing-selection
selectRowIndexesNoUpdate: anArray
	| oldSelectedRowIndexes |
	oldSelectedRowIndexes := selectedRowIndexes.
	oldSelectedRowIndexes = anArray
		ifTrue: [ ^ self ].
	selectedRowIndexes := anArray asArray.
	self
		doAnnounce:
			(AltSelectionChanged
				from: oldSelectedRowIndexes
				to: selectedRowIndexes)