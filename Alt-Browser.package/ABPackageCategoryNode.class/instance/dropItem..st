drag and drop
dropItem: anItem
	"Ok. If we receive a category or a package we add to the end of its children."

	((anItem isKindOf: ABPackageCategoryNode) or: [ anItem isKindOf: ABPackageNode ])
		ifFalse: [ ^ self ].
	anItem parentNode isNil
		ifTrue: [ AltBrowser rootItems remove: anItem ]
		ifFalse: [ anItem parentNode removeChild: anItem ].
	AltBrowser allInstances do: [ :l | l removeNode: anItem ].
	self addChildItem: anItem.
	AltBrowser allInstances do: [ :i | i addNode: anItem ]