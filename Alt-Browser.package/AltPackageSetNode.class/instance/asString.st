printing
asString
	^ (item isKindOf: MCWorkingCopy)
		ifTrue: [ self item packageName ]
		ifFalse: [ item printString ]