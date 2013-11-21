drag and drop
dropItem: anItem
	"Ok. If we receive a category, then we add the category at the end of the parent node. It amounts to removing a node from the root items and adding it here."

	"Adding a class here will trigger the change category of class."

	anItem class == AltClassNode
		ifTrue: [ 
			"Todo: see what is happenning."
			anItem item category: item name.
			^ anItem ].
	((anItem isKindOf: AltPackageCategoryNode) or: [ anItem isKindOf: AltPackageNode ])
		ifFalse: [ ^ nil ].
	anItem parentNode isNil
		ifTrue: [ AltBrowser rootItems remove: anItem ]
		ifFalse: [ anItem parentNode removeChildItem: anItem ].
	AltBrowser announcer announce: (AltNodeRemoved node: anItem).
	self parentNode addChildItem: anItem beforeIndex: (parentNode contents indexOf: self).
	AltBrowser announcer announce: (AltNodeAdded node: anItem).
	^ anItem