querying
findAllMethodCategory: aMethodCategory forClass: aClass
	^ (item == aMethodCategory and: [ parentNode item == aClass ])
		ifTrue: [ OrderedCollection with: self ]
		ifFalse: [ nil ]