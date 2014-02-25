updating
aNodeRebuilt: anEvent
	"Similar to others. Search for the node, force a rebuild of the node."

	self
		withSelectionDo: [ 
			(self findMorphNodeForAbstractItem: anEvent node)
				ifNotNil: [ :aMorph | 
					aMorph complexContents rebuildContents.
					aMorph rebuildChildren ] ]