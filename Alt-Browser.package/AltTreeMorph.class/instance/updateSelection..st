updating
updateSelection: anAltSelectionChanged
	anAltSelectionChanged newIndexes = self selectedRowIndexes
		ifTrue: [ ^ self ].
	selectedRowIndexes := anAltSelectionChanged newIndexes asArray.
	self ensureVisibleSelection.
	self viewport changed