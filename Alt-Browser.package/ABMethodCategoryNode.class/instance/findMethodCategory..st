querying
findMethodCategory: aMethodCategory
	^ aMethodCategory = item
		ifTrue: [ self ]
		ifFalse: [ nil ]