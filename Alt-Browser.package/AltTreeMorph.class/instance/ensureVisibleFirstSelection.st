private
ensureVisibleFirstSelection
	| rowIndex |
	self hasSelection
		ifFalse: [ ^ self ].
	rowIndex := self selectedRowIndex.
	(self container isRowIndexFullyVisible: rowIndex)
		ifFalse:
			[ self container exposedItems ifNil: [ ^ self ].
			rowIndex < self showIndex
				ifTrue: [ self moveShowIndexTo: rowIndex ]
				ifFalse:
					[ self
						moveShowIndexTo: rowIndex - self container calculateMinVisibleRows + 2 ] ]