drag and drop
dropItem: anItem
	"Only valid for an ABMethodCategoryNode. This is because the comment is at the beginning of the list of protocols, so allows for moving a protocol at the beginning of the list."

	| oldCategories newCategories |
	((anItem isKindOf: ABMethodCategoryNode) and: [ anItem sourceClass == self item ])
		ifFalse: [ ^ self ].
	oldCategories := self item organization categories copy.
	newCategories := {anItem item} , (oldCategories copyWithout: anItem item).
	SystemAnnouncer uniqueInstance
		suspendAllWhile: [ self item organization categories: newCategories asArray ].
	self item organization notifyOfChangedCategoriesFrom: oldCategories to: self item organization categories