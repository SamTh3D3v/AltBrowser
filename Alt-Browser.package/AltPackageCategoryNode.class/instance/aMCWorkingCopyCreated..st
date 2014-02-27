updating
aMCWorkingCopyCreated: anEvent
	"Either match to itself or pass to its children."

	(anEvent workingCopy packageName beginsWith: code key)
		ifTrue: [ 
			self addRPackage: anEvent workingCopy packageName asSymbol.
			AltBrowser aNodeToRebuilt: self.
			^ true ].
	^ self contents inject: false into: [ :bool :each | (each aMCWorkingCopyCreated: anEvent) or: [ bool ] ]