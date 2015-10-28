drag and drop
dropItem: anItem
	"Simplify: as things are ordered, the only allowed move is drop inside another. Save changes to the categories."

	anItem parent removeRPackage: anItem item.
	AltBrowserNeo aNodeToRebuilt: anItem parent.
	self addRPackage: anItem item.
	AltBrowserNeo aNodeToRebuilt: self.
	AltBrowserNeo updateCategories.
	^ anItem