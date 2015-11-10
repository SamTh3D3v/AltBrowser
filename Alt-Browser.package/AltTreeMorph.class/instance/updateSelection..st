updating
updateSelection: anAltSelectionChanged
	anAltSelectionChanged newIndexes = selectedRowIndexes
		ifTrue: [ ^ self ].
	selectedRowIndexes := anAltSelectionChanged newIndexes asArray.
	self ensureVisibleFirstSelection.
	self viewport changed