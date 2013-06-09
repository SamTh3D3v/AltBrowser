drag and drop
dropItem: anItem
	"Ok. If we receive a category, then we add the category at the end of the parent node. It amounts to removing a node from the root items and adding it here."

	((anItem isKindOf: ABPackageCategoryNode) or: [ anItem isKindOf: ABPackageNode ])
		ifFalse: [ ^ self ].
	anItem parentNode isNil
		ifTrue: [ AltBrowser rootItems contents remove: anItem ]
		ifFalse: [ anItem parentNode removeChildItem: anItem ].
	AltBrowser announcer announce: (AltNodeRemoved node: anItem).
	self parentNode addChildItem: anItem beforeIndex: (parentNode contents indexOf: self).
	AltBrowser announcer announce: (AltNodeAdded node: anItem)