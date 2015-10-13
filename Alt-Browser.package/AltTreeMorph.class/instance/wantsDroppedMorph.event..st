drag and drop
wantsDroppedMorph: aMorph event: event
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