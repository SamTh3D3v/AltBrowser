querying
findClass: aClass
	^ self item == aClass
		ifTrue: [ self ]
		ifFalse: [ super findClass: aClass ]