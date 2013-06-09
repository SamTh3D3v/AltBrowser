private
childNodeClassFromItem: anItem
	((anItem isKindOf: RPackage) and: [ self item packageName = anItem packageName ])
		ifTrue: [ ^ AltPackageExtensionNode ].
	(anItem isKindOf: RPackage)
		ifTrue: [ ^ AltPackageNode ].
	^ AltClassNode