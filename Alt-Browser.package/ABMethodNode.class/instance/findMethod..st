querying
findMethod: anItem
	^ item == anItem
		ifTrue: [ self ]
		ifFalse: [ nil ]