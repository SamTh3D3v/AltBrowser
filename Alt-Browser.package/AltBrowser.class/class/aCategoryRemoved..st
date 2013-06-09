updating
aCategoryRemoved: anEvent
	"Ok, a class category was removed. What has this become with RPackage ?"

	"Probably: the relevant RPackage doesn't exist anymore, so we can't look for it instance-based. We have to search for the category name instead. "

	| node r |
	node := self rootItems
		detect: [ :e | (r := e findPackageSetForCategory: anEvent categoryName) notNil ]
		ifNone: [ ^ self ].
	r rebuildContents.
	announcer announce: (AltNodeRebuilt node: r)