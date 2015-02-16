updating
aNodeRebuilt: anEvent
	"Similar to others. Search for the node, force a rebuild of the node. Note that if the parent node is nil, this is a root change."

	self
		withSelectionDo: [ 
			anEvent node parent
				ifNil: [ 
					rootItems := nil.
					self updateList ]
				ifNotNil: [ 
					(self findMorphNodeForAbstractItem: anEvent node)
						ifNotNil: [ :aMorph | 
							aMorph complexContents ifNotNil: [:cC | cC rebuildContents].
							aMorph rebuildChildren ] ] ]