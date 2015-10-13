event handling
mouseMove: event
	| aMorph |
	event isDraggingEvent
		ifFalse: [ ^ self ].
	aMorph := event hand submorphs first.
	aMorph class == TransferMorph
		ifFalse: [ ^ self ].
	(self container rowIndexContainingPoint: event position)
		ifNotNil:
			[ :rowIndex | 
			((self model at: rowIndex) wantsDroppedElement: aMorph passenger)
				ifTrue: [ dropIndex := rowIndex ]
				ifFalse: [ dropIndex := nil ].
			self refresh ]