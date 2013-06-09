as yet unclassified
findClass: aClass
	^ self item == aClass
		ifTrue: [ self ]
		ifFalse: [ nil ]