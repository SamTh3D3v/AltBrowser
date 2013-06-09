as yet unclassified
findClassComment: aClass
	^ item == aClass
		ifTrue: [ self ]
		ifFalse: [ nil ]