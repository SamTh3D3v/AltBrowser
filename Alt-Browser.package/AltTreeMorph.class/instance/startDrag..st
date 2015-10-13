drag and drop
startDrag: event
	"Remember to correctly set the mouse focus to me if I am to receive
	the move events to myself"

	"Select if not selected under that point."

	| passengers transferMorph rowIndex |
	event hand hasSubmorphs
		ifTrue: [ ^ self ].
	self dragEnabled
		ifFalse: [ ^ self ].
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
			event hand releaseMouseFocus: self ].
	event hand newMouseFocus: self