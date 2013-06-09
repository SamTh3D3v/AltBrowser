drag and drop
dropItem: anItem
	"Ok. If we receive a category or a package we either add it to its
	children (if it has no children ?) or add it just before this item?"

	((anItem isKindOf: ABPackageCategoryNode) or: [ anItem isKindOf: ABPackageNode ])
		ifFalse: [ ^ nil ].
	anItem parentNode isNil
		ifTrue: [ AltBrowserModel rootItems remove: anItem ]
		ifFalse: [ anItem parentNode removeChildItem: anItem ].
	AltBrowserModel announcer announce: (AltNodeRemoved node: anItem).
	self childrenItems isEmpty
		ifTrue: [ self addChildItem: anItem ]
		ifFalse: [ 
			self parentNode isNil
				ifTrue: [ 
					AltBrowserModel rootItems add: anItem before: self.
					anItem parentNode: nil ]
				ifFalse: [ self parentNode addChildItem: anItem beforeIndex: (self parentNode contents indexOf: self) ] ].
	AltBrowserModel announcer announce: (AltNodeAdded node: anItem).
	^ anItem