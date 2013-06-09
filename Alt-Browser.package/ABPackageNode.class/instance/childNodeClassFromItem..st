as yet unclassified
childNodeClassFromItem: anItem
	((anItem isKindOf: Class) or: [ anItem isKindOf: Metaclass ])
		ifTrue: [ ^ ABClassNode ].
	(anItem isKindOf: MCWorkingCopy)
		ifTrue: [ ^ ABPackageExtensionNode ].
	^ ABClassCategoryNode