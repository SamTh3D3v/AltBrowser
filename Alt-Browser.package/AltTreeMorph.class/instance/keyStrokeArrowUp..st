event handling
keyStrokeArrowUp: event
	| rowIndex |
	rowIndex := self selectedRowIndex.
	rowIndex > 1
		ifFalse: [ ^ self ].
	self selectRowIndexes: #().
	self selectRowIndex: rowIndex