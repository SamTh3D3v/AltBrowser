querying
findMethodCategory: aMethodCategory in: aClass
	^ (aMethodCategory = code and: [ aClass == parent itemClass ])
		ifTrue: [ self ]
		ifFalse: [ nil ]