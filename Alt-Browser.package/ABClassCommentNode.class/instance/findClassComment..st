querying
findClassComment: aClass
	^ item == aClass
		ifTrue: [ self ]
		ifFalse: [ nil ]