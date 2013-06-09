private
childNodeClassFromItem: anItem
	((anItem isKindOf: Class) or: [ (anItem isKindOf: Metaclass) or: [ anItem isTrait ] ])
		ifTrue: [ ^ ABClassNode ].
	(anItem isKindOf: RPackage)
		ifTrue: [ ^ ABPackageExtensionNode ].
	^ ABClassCategoryNode