as yet unclassified
findAllMethodParents: aMethodSelector forClass: aClass
	^ (parentNode item == aClass and: [ (parentNode item whichCategoryIncludesSelector: aMethodSelector) = item  ] )
		ifTrue: [ OrderedCollection with: self ]
		ifFalse: [ nil ]