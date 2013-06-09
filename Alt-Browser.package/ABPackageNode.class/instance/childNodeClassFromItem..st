private
childNodeClassFromItem: anItem
	((anItem isKindOf: Class) or: [ anItem isKindOf: Metaclass ])
		ifTrue: [ ^ ABClassNode ].
	(anItem isKindOf: RPackage)
		ifTrue: [ ^ ABPackageExtensionNode ].
	^ ABClassCategoryNode