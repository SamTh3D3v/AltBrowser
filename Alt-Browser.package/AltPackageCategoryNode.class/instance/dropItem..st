drag and drop
dropItem: anItem
	"Ok. If we receive a category or a package we either add it to its
	children (if it has no children ?) or add it just before this item?"

	anItem parentNode isNil
		ifTrue: [ AltBrowser rootItems remove: anItem ]
		ifFalse: [ anItem parentNode removeChildItem: anItem ].
	AltBrowser announcer announce: (AltNodeRemoved node: anItem).
	self childrenItems isEmpty
		ifTrue: [ self addChildItem: anItem ]
		ifFalse: [ 
			self parentNode isNil
				ifTrue: [ 
					AltBrowser rootItems add: anItem before: self.
					anItem parentNode: nil ]
				ifFalse: [ self parentNode addChildItem: anItem ] ].
	AltBrowser announcer announce: (AltNodeAdded node: anItem).
	^ anItem