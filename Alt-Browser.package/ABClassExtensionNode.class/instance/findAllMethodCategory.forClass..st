querying
findAllMethodCategory: aMethodCategory forClass: aClass
	^ (item == aClass and: [ parentNode item packageInfo isYourClassExtension: aMethodCategory ])
		ifTrue: [ OrderedCollection with: self ]
		ifFalse: [ nil ]