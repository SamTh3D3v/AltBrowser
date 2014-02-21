private
childNodeClassFromItem: anItem
	((anItem isKindOf: RPackage) and: [ self packageName = anItem packageName ])
		ifTrue: [ ^ AltRPackageExtensionNode ].
	(anItem isKindOf: RPackageTag)
		ifTrue: [ ^ AltRPackageTagNode ].
	^ AltClassNode