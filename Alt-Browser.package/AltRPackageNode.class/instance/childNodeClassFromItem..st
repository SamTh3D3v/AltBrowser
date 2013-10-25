private
childNodeClassFromItem: anItem
	((anItem isKindOf: RPackage) and: [ self item packageName = anItem packageName ])
		ifTrue: [ ^ AltRPackageExtensionNode ].
	(anItem isKindOf: RPackageTag)
		ifTrue: [ ^ AltRPackageTagNode ].
	^ AltClassNode