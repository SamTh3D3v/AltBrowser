updating
aMCWorkingCopyCreated: anEvent
	"Either match to itself or pass to its children."

	self contents size = self registrations size
		ifFalse: [ AltBrowser aNodeToRebuilt: self ].
	^ self contents
		anySatisfy: [ :each | each aMCWorkingCopyCreated: anEvent ]