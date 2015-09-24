event handling
keyStrokeArrowUp: event
	| rowIndex |
	rowIndex := self selectedRowIndex.
	rowIndex > 1
		ifFalse: [ ^ self ].
	selectionStrategy selectRowIndex: rowIndex - 1 event: event