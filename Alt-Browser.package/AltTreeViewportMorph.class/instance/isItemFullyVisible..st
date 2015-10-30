testing
isItemFullyVisible: rowIndex
	"Answer if an item is fully visible."

	self exposedItems ifNil: [ ^ false ].
	^ (self exposedItems at: rowIndex ifAbsent: [  ])
		ifNil: [ false ]
		ifNotNil:
			[ :aMorph | 
			aMorph submorphs last
				in: [ :i | i left >= self left and: [ i right <= self right ] ] ]