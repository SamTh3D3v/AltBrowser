querying
findMethodCategory: aMethodCategory in: aClass
	^ (aMethodCategory = item and: [ aClass == parentNode item ])
		ifTrue: [ self ]
		ifFalse: [ nil ]