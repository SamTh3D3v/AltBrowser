private
childNodeClassFromItem: anItem
	((anItem isKindOf: Class) or: [ (anItem isKindOf: Metaclass) or: [ anItem isTrait ] ])
		ifTrue: [ ^ AltClassNode ].
	(anItem isKindOf: RPackage)
		ifTrue: [ ^ AltPackageExtensionNode ].
	^ AltClassCategoryNode