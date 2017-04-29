updating
aMCWorkingCopyCreated: anEvent
	"Ok, if we reach there then this means it is a new package we don't know about yet. If we include it, then add it."

	(anEvent workingCopy packageName beginsWith: 'BaselineOf')
		ifTrue: [ ^ false ].
	(anEvent workingCopy packageName beginsWith: 'ConfigurationOf')
		ifTrue: [ ^ false ].
	(self projectPackagesIncludes: anEvent workingCopy packageName)
		ifTrue: [ self addRPackage: anEvent workingCopy packageName asSymbol.
			AltBrowser aNodeToRebuilt: self.
			^ true ].
	^ false