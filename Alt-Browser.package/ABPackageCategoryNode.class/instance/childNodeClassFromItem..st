private
childNodeClassFromItem: anItem
	(anItem isKindOf: Association )
		ifTrue: [ ^ self class ].
	^ ABPackageSetNode