updating
aMCWorkingCopyCreated: anEvent
	"Feature needed: when adding a packagewith the same prefix as another, create the appropriate category."

	(self root aMCWorkingCopyCreated: anEvent)
		ifTrue: [ ^ self ].
	self root addRPackage: anEvent workingCopy packageName asSymbol.
	self aNodeToRebuilt: self root