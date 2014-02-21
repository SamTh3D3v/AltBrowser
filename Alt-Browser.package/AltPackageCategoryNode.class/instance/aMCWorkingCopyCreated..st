updating
aMCWorkingCopyCreated: anEvent
	"Either match to itself or pass to its children."

	(item key , '*' match: anEvent workingCopy packageName)
		ifTrue: [ 
			self addChild: anEvent workingCopy packageName.
			AltBrowser aNodeToRebuilt: self.
			^ true ].
	^ self contents inject: false into: [ :bool :each | (each aMCWorkingCopyCreated: anEvent) or: [ bool ] ]