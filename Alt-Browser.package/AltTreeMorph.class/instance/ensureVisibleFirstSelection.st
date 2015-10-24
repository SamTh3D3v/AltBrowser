private
ensureVisibleFirstSelection
	| rowIndex |
	self hasSelection
		ifFalse: [ ^ self ].
	rowIndex := self selectedRowIndex.
	(self container isRowIndexFullyVisible: rowIndex)
		ifFalse:
			[ self container exposedItems ifNil: [ ^ self ].
			self moveShowIndexTo: rowIndex ]