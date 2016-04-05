drag and drop
startDrag: event
	"Select if not selected under that point."

	| passengers transferMorph rowIndex |
	event hand hasSubmorphs
		ifTrue: [ ^ self ].
	self dragEnabled
		ifFalse: [ ^ self ].
	ActiveHand anyButtonPressed
		ifFalse: [ ^ self ].
	rowIndex := self viewport rowIndexContainingPoint: event cursorPoint.
	rowIndex ifNil: [ ^ self ].
	passengers := Array with: (self model at: rowIndex).
	transferMorph := self model transferFor: passengers from: self.
	transferMorph
		align: transferMorph draggedMorph bottomLeft
		with: event position.
	transferMorph dragTransferType: self model dragTransferType.
	[ event hand grabMorph: transferMorph ]
		ensure: [ Cursor normal show ].
	event hand newMouseFocus: self