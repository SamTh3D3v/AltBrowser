querying
findAllMethodParents: aMethodSelector forClass: aClass
	"Ask the package to know if this method is an extension. Ok, this may work, but only if the class has already extension methods. Is short-circuited by PackageExtensionNode."
	
	^ (item == aClass and: [ parentNode item includesExtensionSelector: aMethodSelector ofClass:  item])
		ifTrue: [ OrderedCollection with: self parentNode ]
		ifFalse: [ nil ]