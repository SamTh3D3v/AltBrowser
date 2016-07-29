enumerating
doAssignment: aRecord
	"An assignment has a value, hence a type."

	^(aRecord value isKindOf: type)
		ifTrue: [aRecord]
		ifFalse: [nil]