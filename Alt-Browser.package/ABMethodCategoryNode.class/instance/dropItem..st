drag and drop
dropItem: anItem
	"Only valid for an ABMethodCategoryNode or an ABMethodNode."

	((anItem isKindOf: ABMethodCategoryNode) or: [ anItem isKindOf: ABMethodNode ])
		ifFalse: [ ^ self ].
	anItem sourceClass == self sourceClass
		ifFalse: [ ^ self ].
	anItem == self
		ifTrue: [ ^ self ].
	(anItem isKindOf: ABMethodNode)
		ifTrue: [ 
			| cm |
			cm := anItem compiledMethod.
			cm methodClass organization classify: anItem item under: self item suppressIfDefault: false ].
	(anItem isKindOf: ABMethodCategoryNode)
		ifTrue: [ 
			| oldCategories newCategories |
			oldCategories := self sourceClass organization categories copy.
			newCategories := (oldCategories copyWithout: anItem item) asOrderedCollection.
			newCategories add: anItem item after: self item.
			SystemAnnouncer uniqueInstance suspendAllWhile: [ self sourceClass organization categories: newCategories asArray ].
			self sourceClass organization notifyOfChangedCategoriesFrom: oldCategories to: self sourceClass organization categories ]