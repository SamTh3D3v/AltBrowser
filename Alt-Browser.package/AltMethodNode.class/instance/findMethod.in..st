querying
findMethod: anItem in: aClass
	^ (self selector == anItem and: [ self sourceClass == aClass ])
		ifTrue: [ self ]
		ifFalse: [ nil ]