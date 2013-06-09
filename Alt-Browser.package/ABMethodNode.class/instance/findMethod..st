as yet unclassified
findMethod: anItem
	^ item == anItem
		ifTrue: [ self ]
		ifFalse: [ nil ]