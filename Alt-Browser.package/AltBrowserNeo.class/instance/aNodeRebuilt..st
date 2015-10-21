updating
aNodeRebuilt: anEvent
	"Similar to others. Search for the node, force a rebuild of the node. Note that if the parent node is nil, this is a root change."

	(self root findItem: anEvent node)
		ifNotNil: [ :found | 
			found rebuildContents.
			root changed ]