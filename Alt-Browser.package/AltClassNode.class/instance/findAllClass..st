querying
findAllClass: aClass
	^ self itemClass == aClass
		ifTrue: [ OrderedCollection with: self ]
		ifFalse: [ super findAllClass: aClass ]