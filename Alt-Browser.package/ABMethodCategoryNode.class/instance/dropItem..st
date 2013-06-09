drag and drop
dropItem: anItem
	"Only valid for an ABMethodCategoryNode or an ABMethodNode."

	((anItem isKindOf: ABMethodCategoryNode) or: [ anItem isKindOf: ABMethodNode ])
		ifFalse: [ ^ self ].
	anItem sourceClass == self sourceClass
		ifFalse: [ ^ self ].
	(anItem isKindOf: ABMethodNode)
		ifTrue: [ 
			| cm |
			cm := anItem compiledMethod.
			cm methodClass organization classify: anItem item under: self item suppressIfDefault: false ]