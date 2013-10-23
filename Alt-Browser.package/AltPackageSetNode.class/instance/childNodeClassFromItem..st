private
childNodeClassFromItem: anItem
	((anItem isKindOf: RPackage) and: [ self item packageName = anItem packageName ])
		ifTrue: [ ^ AltPackageNode ].
	(anItem isKindOf: RPackageTag)
		ifTrue: [ ^ AltPackageTagNode ].
	^ AltClassNode