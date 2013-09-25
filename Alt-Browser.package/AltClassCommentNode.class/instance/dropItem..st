as yet unclassified
dropItem: anItem
	"Only valid for an ABMethodCategoryNode. This is because the comment is at the beginning of the list of protocols, so allows for moving a protocol at the beginning of the list."

	| oldCategories newCategories |
	((anItem isKindOf: AltMethodCategoryNode) and: [ anItem sourceClass == self item ])
		ifFalse: [ ^ self ].
	oldCategories := self item organization realCategories.
	newCategories := {(anItem item)} , (oldCategories copyWithout: anItem item).
	SystemAnnouncer uniqueInstance
		suspendAllWhile: [ 
			self item organization
				changeFromCategorySpecs:
					(newCategories collect: [ :name | {name} , (self item organization listAtCategoryNamed: name) ]) ].
	self item organization notifyOfChangedCategoriesFrom: oldCategories to: self item organization realCategories