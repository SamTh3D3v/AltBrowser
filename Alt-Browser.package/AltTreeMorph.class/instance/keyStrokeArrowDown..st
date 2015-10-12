event handling
keyStrokeArrowDown: event
	| rowIndex |
	rowIndex := self selectedRowIndex.
	rowIndex < self numberOfRows
		ifFalse: [ ^ self ].
	self selectRowIndex: rowIndex + 1