private
childNodeClassFromItem: anItem
	((anItem isKindOf: RPackage) and: [ self item packageSet packages size = 1 ])
		ifTrue: [ ^ AltPackageExtensionNode ].
	(anItem isKindOf: RPackage)
		ifTrue: [ ^ AltPackageNode ].
	^ AltClassNode