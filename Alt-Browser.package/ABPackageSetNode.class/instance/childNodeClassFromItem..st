private
childNodeClassFromItem: anItem
	((anItem isKindOf: RPackage) and: [ self item packageSet packages size = 1 ])
		ifTrue: [ ^ ABPackageExtensionNode ].
	(anItem isKindOf: RPackage)
		ifTrue: [ ^ ABPackageNode ].
	^ ABClassNode