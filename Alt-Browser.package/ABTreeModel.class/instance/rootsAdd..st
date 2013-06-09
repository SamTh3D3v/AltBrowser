drag and drop
rootsAdd: aNode
	"Algorithm: look for the parent of the node. If this parent node is found, then add a node equivalent to the contents if they do exist."

	| pNode |
	(pNode := aNode parentNode) isNil
		ifTrue: [ 
			self assert: aNode isTreeNodeModel.
			rootsHolder add: aNode ]
		ifFalse: [ 
			self assert: aNode isTreeNodeModel not.
			rootsHolder contents
				do: [ :e | 
					| r |
					(r := e findItem: pNode) notNil
						ifTrue: [ 
							| n wNode |
							r contentsNotNil
								ifTrue: [ wNode := r addChild: aNode ].
							(n := (self widget scroller submorphs at: 1) findItem: r) notNil
								ifTrue: [ 
									n hasContents
										ifTrue: [ n addItem: (ABTreeNodeModel with: wNode model: wNode) ] ].
							^ self ] ] ]