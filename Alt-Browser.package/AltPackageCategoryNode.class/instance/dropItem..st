drag and drop
dropItem: anItem
	"Simplify: as things are ordered, the only allowed move is drop inside another. Save changes to the categories."

	anItem parent isNil
		ifTrue: [ 
			AltBrowser removeRootItem: anItem.
			AltBrowser aRootNodesChange ]
		ifFalse: [ 
			anItem parent removeRPackage: anItem code.
			AltBrowser aNodeToRebuilt: anItem parent ].
	self addRPackage: anItem code.
	AltBrowser aNodeToRebuilt: self.
	AltBrowser updateCategories.
	^ anItem