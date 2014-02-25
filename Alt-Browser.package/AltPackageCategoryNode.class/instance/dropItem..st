drag and drop
dropItem: anItem
	"Simplify: as things are ordered, the only allowed move is drop inside another."

	anItem parentNode isNil
		ifTrue: [ 
			AltBrowser rootItems remove: anItem.
			AltBrowser aRootNodesChange ]
		ifFalse: [ 
			anItem parentNode removeRPackage: anItem item.
			AltBrowser aNodeToRebuilt: anItem parentNode ].
	self addRPackage: anItem item.
	AltBrowser aNodeToRebuilt: self.
	^ anItem