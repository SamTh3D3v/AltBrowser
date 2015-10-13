drag and drop
startDrag: event
	| passengers transferMorph rowIndex |
	event hand hasSubmorphs
		ifTrue: [ ^ self ].
	self dragEnabled
		ifFalse: [ ^ self ].
	"Here I ensure at least one element is selected. But I also select one element if
	appropriate. "
	ActiveHand anyButtonPressed
		ifFalse: [ ^ self ].
	rowIndex := self container rowIndexContainingPoint: event cursorPoint.
	rowIndex
		ifNotNil:
			[ (self selectedRowIndexes includes: rowIndex)
				ifFalse: [ self selectRowIndex: rowIndex ] ]
		ifNil: [ ^ self ].
	passengers := self selectedRowIndexes
		collect: [ :each | self model at: each ].
	transferMorph := self model transferFor: passengers from: self.
	transferMorph
		align: transferMorph draggedMorph bottomLeft
		with: event position.
	transferMorph dragTransferType: self model dragTransferType.
	[ event hand grabMorph: transferMorph ]
		ensure:
			[ Cursor normal show.
			event hand releaseMouseFocus: self ]