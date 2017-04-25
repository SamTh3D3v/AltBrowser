updating
aMCWorkingCopyCreated: anEvent
	"Either match to itself or pass to its children."

	(self projectPackages includes: anEvent workingCopy packageName)
		ifTrue: [ self addRPackage: anEvent workingCopy packageName asSymbol.
			AltBrowser aNodeToRebuilt: self.
			^ true ].
	^ self contents
		anySatisfy: [ :each | each aMCWorkingCopyCreated: anEvent ]