drag and drop
dropItem: anItem
	"Fairly complex logic to handle between adding stuff inside or moving it around. May send two aRootNodesChange in a row. If we consider that things are ordered, then this may be simplified by just adding things inside others."

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