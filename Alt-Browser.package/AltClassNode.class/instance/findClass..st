querying
findClass: aClass
	^ self itemClass == aClass
		ifTrue: [ self ]
		ifFalse: [ super findClass: aClass ]