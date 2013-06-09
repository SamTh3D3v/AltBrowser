querying
findAllClass: aClass
	^ self item == aClass
		ifTrue: [ OrderedCollection with: self ]
		ifFalse: [ super findAllClass: aClass ]