drag and drop
transferFor: aSetOfItems from: aMorph
	"Create a draggable object."

	aSetOfItems size = 1
		ifTrue:
			[ ^ super transferFor: aSetOfItems first item from: aMorph ].
	^ super transferFor: aSetOfItems from: aMorph