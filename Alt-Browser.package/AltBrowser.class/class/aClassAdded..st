updating
aClassAdded: anEvent
	"Ok, a class was added. Find the package it belongs to (or none)."

	self root aClassAdded: anEvent.
	(anEvent classAdded name beginsWith: 'ConfigurationOf')
		ifTrue: [ 
			| cat |
			cat := anEvent classAdded theNonMetaClass name allButFirst: 'ConfigurationOf' size.
			(self root findPackageCategory: cat asSymbol)
				ifNil: [ 
					self root addRPackage: cat asSymbol -> OrderedCollection new.
					self aNodeToRebuilt: self root ] ]