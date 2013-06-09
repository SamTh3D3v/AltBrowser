drag and drop
dropItem: anItem
	"Ok. If we receive a category or a package we either add it to its
	children (if it has no children ?) or add it just before this item?"

	| itemNode |
	((anItem isKindOf: ABPackageCategoryNode) or: [ anItem isKindOf: ABPackageNode ])
		ifFalse: [ ^ self ].
	anItem parentNode isNil
		ifTrue: [ AltBrowser rootItems remove: anItem ]
		ifFalse: [ anItem parentNode removeChildItem: anItem ].
	AltBrowser allInstances do: [ :l | l removeNode: anItem ].
	self childrenItems isEmpty
		ifTrue: [ self addChildItem: anItem ]
		ifFalse: [ 
			self parentNode isNil
				ifTrue: [ 
					AltBrowser rootItems add: anItem before: self.
					itemNode := ABTreeNodeModel with: anItem model: anItem ]
				ifFalse: [ self parentNode addChildItem: anItem beforeIndex: (self parentNode contents indexOf: self) ] ].
	itemNode ifNil: [ itemNode := anItem ].
	AltBrowser allInstances do: [ :i | i addNode: itemNode ]