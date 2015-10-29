querying
findClass: aClass
	^ self itemClass == aClass
		ifTrue: [ self ]
		ifFalse: [ nil ]
