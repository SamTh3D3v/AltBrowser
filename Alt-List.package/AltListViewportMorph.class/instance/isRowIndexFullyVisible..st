testing
isRowIndexFullyVisible: rowIndex
	"Answer if a row is *fully* visible. That means row is completely visible (there is 
	 not hidden part)"

	self exposedItems ifNil: [ ^ false ].
	^ (self exposedItems at: rowIndex ifAbsent: [  ])
		ifNil: [ false ]
		ifNotNil:
			[ :aMorph | aMorph top >= self top and: [ aMorph bottom <= self bottom ] ]