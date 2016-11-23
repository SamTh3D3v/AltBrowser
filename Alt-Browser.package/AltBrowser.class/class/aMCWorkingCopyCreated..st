updating
aMCWorkingCopyCreated: anEvent
	"Feature needed: when adding a packagewith the same prefix as another, create the appropriate category."

	(RPackageOrganizer default
		packageNamed: anEvent workingCopy packageName
		ifAbsent: [ nil ])
		ifNotNil: [ :rp | (self root findPackage: rp) ifNotNil: [ ^ self ] ].
	(self root aMCWorkingCopyCreated: anEvent)
		ifTrue: [ ^ self ].
	self root addRPackage: anEvent workingCopy packageName asSymbol.
	self aNodeToRebuilt: self root