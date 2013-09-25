as yet unclassified
dropItem: anItem
	"Only valid for an AltMethodCategoryNode or an AltMethodNode."

	((anItem isKindOf: AltMethodCategoryNode) or: [ anItem isKindOf: AltMethodNode ])
		ifFalse: [ ^ self ].
	anItem sourceClass == self sourceClass
		ifFalse: [ 
			(anItem isKindOf: AltMethodNode)
				ifTrue: [ self sourceClass compile: anItem sourceCode classified: self methodCategory notifying: nil ].
			^ self ].
	anItem == self
		ifTrue: [ ^ self ].
	(anItem isKindOf: AltMethodNode)
		ifTrue: [ 
			| cm |
			cm := anItem compiledMethod.
			cm methodClass organization classify: anItem item under: self item suppressIfDefault: false ].
	(anItem isKindOf: AltMethodCategoryNode)
		ifTrue: [ 
			| oldCategories newCategories |
			oldCategories := self sourceClass organization realCategories copy.
			newCategories := (oldCategories copyWithout: anItem item) asOrderedCollection.
			newCategories add: anItem item after: self item.
			SystemAnnouncer uniqueInstance
				suspendAllWhile: [ 
					self sourceClass organization
						changeFromCategorySpecs:
							(newCategories collect: [ :name | {name} , (self sourceClass organization listAtCategoryNamed: name) ]) ].
			self sourceClass organization
				notifyOfChangedCategoriesFrom: oldCategories
				to: self sourceClass organization realCategories ]