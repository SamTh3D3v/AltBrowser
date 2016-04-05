updating
updateVisibleSelectionVertical
	"This part can be done before updating the items."

	| rowIndex |
	self owner hasSelection
		ifFalse: [ ^ self ].
	rowIndex := self owner selectedRowIndex.
	(self isRowIndexFullyVisible: rowIndex)
		ifFalse: [ self owner verticalScrollBar
				value: (self verticalValueForIndex: rowIndex) ]