updating
aNodeAdded: aNode
	"Algorithm: look for the parent of the node. If this parent node is found, then add a node equivalent to the contents if they do exist."

	| pNode |
	(pNode := aNode parentNode) isNil
		ifTrue: [ 
			self assert: (aNode isKindOf: ABTreeNodeModel) not.
			tree roots add: (ABTreeNodeModel with: aNode model: aNode) beforeIndex: (AltBrowser roots indexOf: aNode).
			(treeMorph scroller submorphs at: 1) checkInvariant ]
		ifFalse: [ 
			tree roots
				do: [ :e | 
					| r |
					(r := e findItem: pNode) notNil
						ifTrue: [ 
							| n wNode |
							r contentsNotNil
								ifTrue: [ wNode := r addChild: aNode ].
							(n := (treeMorph scroller submorphs at: 1) findItem: r) notNil
								ifTrue: [ n rebuildChildren ].
							(treeMorph scroller submorphs at: 1) checkInvariant.
							^ self ] ] ]