drag and drop
wantsDroppedMorph: aMorph event: event
	"This is where we should release the focus?"

	aMorph class == TransferMorph
		ifFalse: [ ^ false ].
	^ (self model
		at:
			((self viewport rowIndexContainingPoint: event position)
				ifNil: [ ^ false ])) wantsDroppedElement: aMorph passenger