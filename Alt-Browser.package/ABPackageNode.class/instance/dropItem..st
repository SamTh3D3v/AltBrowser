drag and drop
dropItem: anItem
	"Ok. If we receive a category, then we add the category at the end of the parent node. It amounts to removing a node from the root items and adding it here."

	((anItem isKindOf: ABPackageCategoryNode) or: [ anItem isKindOf: ABPackageNode ])
		ifFalse: [ ^ self ].
	anItem parentNode isNil
		ifTrue: [ AltBrowser rootItems remove: anItem ]
		ifFalse: [ anItem parentNode removeChild: anItem ].
	AltBrowser allInstances do: [ :l | l removeNode: anItem ].
	self parentNode addChildItem: anItem beforeIndex: (parentNode contents indexOf: self).
	AltBrowser allInstances do: [ :i | i addNode: anItem ]