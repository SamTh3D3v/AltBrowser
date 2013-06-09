updating
aMCWorkingCopyDeleted: anEvent
	"Depending on the MCPackage, this may appear as a package category or as a RPackage."
	
	"Note. Before the removal of the package set (and working copy), all packages have disappeared."

	| aPackageSet package cat node r |
	aPackageSet := anEvent workingCopy packageSet.
	self rootItems contents
		detect: [ :e | (node := e findPackageSet: anEvent workingCopy) notNil ]
		ifNone: [ ^ self ].
	node parentNode notNil
		ifTrue: [ node parentNode removeChildItem: node ]
		ifFalse: [ self roots remove: node ].
	announcer announce: (AltNodeRemoved node: r)