updating
aMCWorkingCopyDeleted: anEvent
	"Ok. Now, empty package categories are not removed automagically."

	| package cat node r |
	node := self roots contents
		detect: [ :e | (r := e findPackage: (RPackageOrganizer default packageNamed: anEvent workingCopy packageName)) notNil ] ifNone: [^ self].
	r parentNode removeChildItem: r.
	announcer announce: (AltNodeRemoved node: r) 