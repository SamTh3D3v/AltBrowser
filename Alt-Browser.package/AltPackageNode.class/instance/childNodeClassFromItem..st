private
childNodeClassFromItem: anItem
	"AltClassCategoryNode is supposed not to be in use anymore."
	
	((anItem isKindOf: Class) or: [ (anItem isKindOf: Metaclass) or: [ anItem isTrait ] ])
		ifTrue: [ ^ AltClassNode ].
	(anItem isKindOf: RPackage)
		ifTrue: [ ^ AltPackageExtensionNode ].
	^ AltClassCategoryNode