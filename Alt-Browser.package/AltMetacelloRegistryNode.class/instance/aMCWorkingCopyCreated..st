updating
aMCWorkingCopyCreated: anEvent
	"Either match to itself or pass to its children."

	((anEvent workingCopy packageName beginsWith: 'Configuration')
		or: [ anEvent workingCopy packageName beginsWith: 'Baseline' ])
		ifTrue: [ AltBrowser aNodeToRebuilt: self ].
	^ self contents
		anySatisfy: [ :each | each aMCWorkingCopyCreated: anEvent ]