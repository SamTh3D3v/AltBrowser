drag and drop
wantsDroppedMorph: aMorph event: event
	"This is where we should release the focus?"

	aMorph class == TransferMorph
		ifFalse: [ ^ false ].
	^ self model
		ifNil: [ false ]
		ifNotNil:
			[ :m | 
			(m
				at:
					((self container rowIndexContainingPoint: event position)
						ifNil: [ ^ false ])) wantsDroppedElement: aMorph passenger ]