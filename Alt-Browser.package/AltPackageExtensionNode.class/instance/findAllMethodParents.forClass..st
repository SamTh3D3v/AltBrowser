querying
findAllMethodParents: aSelector forClass: aClass
	"Returns an OrderedCollection for self"

	^ (self item includesExtensionSelector: aSelector ofClass: aClass)
		ifTrue: [ OrderedCollection with: self ]
		ifFalse: [ nil ]