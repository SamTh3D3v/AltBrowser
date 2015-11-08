event handling
mouseMove: event
	"We consider that we reach here only if this is a drag and drop move event."

	| aMorph |
	event hand hasSubmorphs
		ifFalse: [ ^ false ].
	aMorph := event hand submorphs first.
	aMorph class == TransferMorph
		ifFalse: [ ^ self ].
	(self viewport rowIndexContainingPoint: event position)
		ifNotNil:
			[ :rowIndex | 
			((self model at: rowIndex) wantsDroppedElement: aMorph passenger)
				ifTrue: [ dropIndex := rowIndex ]
				ifFalse: [ dropIndex := nil ].
			self viewport changed ]