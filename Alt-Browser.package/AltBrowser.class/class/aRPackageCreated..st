updating
aRPackageCreated: anEvent
	"Tracing RPackage creation. There is probably a MCWorkingCopy containing that RPackage somewhere, search for it."

	| r |
	self rootItems detect: [ :e | (r := e findPackageSetFor: anEvent package) notNil ] ifNone: [ ^ self ].
	announcer announce: (AltNodeRebuilt node: r)