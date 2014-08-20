querying
findClassComment: aClass
	^ self item == aClass
		ifTrue: [ self ]
		ifFalse: [ nil ]