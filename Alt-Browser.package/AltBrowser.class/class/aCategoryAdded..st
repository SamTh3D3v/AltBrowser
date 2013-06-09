updating
aCategoryAdded: anEvent
	"Ok, a class category was added. Search for that category, rebuilt the parent node (should be a package set)."

	| r |
	self rootItems
		detect: [ :e | (r := e findPackageSetFor: (RPackageOrganizer default packageNamed: anEvent categoryName)) notNil ]
		ifNone: [ ^ self ].
	r rebuildContents.
	announcer announce: (AltNodeRebuilt node: r)