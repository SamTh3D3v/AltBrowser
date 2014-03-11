drag and drop
dropItem: anItem
	"Simplify: as things are ordered, the only allowed move is drop inside another."

	anItem parent isNil
		ifTrue: [ 
			AltBrowser removeRootItem: anItem.
			AltBrowser aRootNodesChange ]
		ifFalse: [ 
			anItem parent removeRPackage: anItem code.
			AltBrowser aNodeToRebuilt: anItem parent ].
	self addRPackage: anItem code.
	AltBrowser updateCategories.
	AltBrowser aNodeToRebuilt: self.
	^ anItem