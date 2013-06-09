updating
aMCWorkingCopyDeleted: anEvent
	"Depending on the MCPackage, this may appear as a package category or as a RPackage."

	| aPackageSet package cat node r |
	aPackageSet := anEvent workingCopy packageSet.
	self roots contents
		detect: [ :e | (node := e findPackage: aPackageSet packages first) notNil ]
		ifNone: [ ^ self ].
	aPackageSet packages size > 1
		ifTrue: [ node := node parentNode ].
	node parentNode notNil
		ifTrue: [ node parentNode removeChildItem: node ]
		ifFalse: [ self roots remove: node ].
	announcer announce: (AltNodeRemoved node: r)