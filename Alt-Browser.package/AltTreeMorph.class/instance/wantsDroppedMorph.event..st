drag and drop
wantsDroppedMorph: aMorph event: event
	^ self model
		ifNil: [ false ]
		ifNotNil:
			[ :m | 
			(m
				at:
					((self container rowIndexContainingPoint: event position) ifNil: [ ^ false ]))
				wantsDroppedElement: aMorph passenger ]