updating
aMCWorkingCopyCreated: anEvent
	"Either match to itself or pass to its children."

	^ self contents
		anySatisfy: [ :each | each aMCWorkingCopyCreated: anEvent ]