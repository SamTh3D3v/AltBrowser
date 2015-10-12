event handling
keyStrokeArrowUp: event
	| rowIndex |
	rowIndex := self selectedRowIndex.
	rowIndex > 1
		ifFalse: [ ^ self ].
	self selectRowIndex: rowIndex - 1