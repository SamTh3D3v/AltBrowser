drag and drop
dropItem: anItem
	"Ok. If we receive a category or a package we either add it to its
	children (if it has no children ?) or add it just before this item?"

	anItem parentNode isNil
		ifTrue: [ AltBrowser rootItems remove: anItem ]
		ifFalse: [ anItem parentNode removeRPackage: anItem item ].
	AltBrowser announcer announce: (AltNodeRemoved node: anItem).
	self childrenItems isEmpty
		ifTrue: [ self addRPackage: anItem item ]
		ifFalse: [ 
			self parentNode isNil
				ifTrue: [ 
					AltBrowser rootItems add: anItem before: self.
					anItem parentNode: nil.
					AltBrowser aNodeAdded: anItem ]
				ifFalse: [ 
					self parentNode addRPackage: anItem item.
					AltBrowser aNodeToRebuilt: self parentNode ] ].
	^ anItem