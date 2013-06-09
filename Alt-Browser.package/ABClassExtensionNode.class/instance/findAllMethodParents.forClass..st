as yet unclassified
findAllMethodParents: aMethodSelector forClass: aClass
	"Ask the package to know if this method is an extension."
	
	^ (item == aClass and: [ parentNode item includesExtensionSelector: aMethodSelector ofClass:  item])
		ifTrue: [ OrderedCollection with: self ]
		ifFalse: [ nil ]