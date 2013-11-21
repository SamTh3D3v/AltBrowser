drag and drop
dropItem: anItem
	"Only valid for an AltMethodCategoryNode or an AltMethodNode."

	((anItem isKindOf: AltMethodCategoryNode) or: [ anItem isKindOf: AltMethodNode ])
		ifFalse: [ ^ nil ].
	anItem sourceClass == self sourceClass
		ifFalse: [ 
			(anItem isKindOf: AltMethodNode)
				ifTrue: [ 
					| selector |
					selector := self sourceClass compile: anItem sourceCode classified: self methodCategory notifying: nil.
					^ self findMethod: selector in: self sourceClass ].
			^ nil ].
	anItem == self
		ifTrue: [ ^ nil ].
	(anItem isKindOf: AltMethodNode)
		ifTrue: [ 
			| cm |
			cm := anItem compiledMethod.
			cm methodClass organization classify: anItem item under: self item suppressIfDefault: false.
			^ self findMethod: cm selector in: self sourceClass ].
	(anItem isKindOf: AltMethodCategoryNode)
		ifTrue: [ 
			| oldCategories newCategories |
			oldCategories := self sourceClass organization categories copy.
			newCategories := (oldCategories copyWithout: anItem item) asOrderedCollection.
			newCategories add: anItem item after: self item.
			SystemAnnouncer uniqueInstance suspendAllWhile: [ self sourceClass organization categories: newCategories asArray ].
			self sourceClass organization
				notifyOfChangedCategoriesFrom: oldCategories
				to: self sourceClass organization categories ].
	^ nil