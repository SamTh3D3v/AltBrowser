querying
findMethod: anItem in: aClass
	^ (code == anItem and: [ self sourceClass == aClass ])
		ifTrue: [ self ]
		ifFalse: [ nil ]