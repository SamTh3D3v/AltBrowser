private
childNodeClassFromItem: anItem
	((anItem isKindOf: RPackage) and: [ self item packageName = anItem packageName ])
		ifTrue: [ ^ AltPackageExtensionNode ].
	(anItem isKindOf: RPackageTag)
		ifTrue: [ ^ AltPackageTagNode ].
	^ AltClassNode