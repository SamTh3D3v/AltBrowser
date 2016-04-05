testing
isItemFullyVisible: rowIndex
	"Left to right test: does not really answer if the item is fully visible; return true if one can gain visibility by moving the item left or right."

	self exposedItems ifNil: [ ^ false ].
	^ (self exposedItems at: rowIndex ifAbsent: [  ])
		ifNil: [ false ]
		ifNotNil:
			[ :aMorph | 
			aMorph submorphs last
				in:
					[ :i | 
					(i left >= self left and: [ i right <= self right ])
						or: [ i left < self left and: [ i right > self right ] ] ] ]