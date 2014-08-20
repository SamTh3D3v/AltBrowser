querying
findMethodCategory: aMethodCategory in: aClass
	^ (aMethodCategory = self methodCategory and: [ aClass == parent itemClass ])
		ifTrue: [ self ]
		ifFalse: [ nil ]