querying
findMethod: anItem in: aClass
	^ (item == anItem and: [ self sourceClass == aClass ])
		ifTrue: [ self ]
		ifFalse: [ nil ]