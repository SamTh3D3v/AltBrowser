querying
findClassComment: aClass
	^ code == aClass
		ifTrue: [ self ]
		ifFalse: [ nil ]