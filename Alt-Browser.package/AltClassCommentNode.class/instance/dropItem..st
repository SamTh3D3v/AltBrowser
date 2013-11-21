drag and drop
dropItem: anItem
	"Only valid for an AltMethodCategoryNode. This is because the comment is at the beginning of the list of protocols, so allows for moving a protocol at the beginning of the list."

	| oldCategories newCategories |
	((anItem isKindOf: AltMethodCategoryNode) and: [ anItem sourceClass == self item ])
		ifFalse: [ ^ nil ].
	oldCategories := self item organization categories copy.
	newCategories := {(anItem item)} , (oldCategories copyWithout: anItem item).
	SystemAnnouncer uniqueInstance suspendAllWhile: [ self item organization categories: newCategories asArray ].
	self item organization notifyOfChangedCategoriesFrom: oldCategories to: self item organization categories.
	^ self parent findMethodCategory: anItem item in: self item