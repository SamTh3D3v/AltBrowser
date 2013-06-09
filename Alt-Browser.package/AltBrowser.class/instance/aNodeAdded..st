updating
aNodeAdded: anEvent
	"Algorithm: look for the parent of the node. If this parent node is found, then add a node equivalent to the contents if they do exist."
	
	"Works, but in a better world, should be handled by an appropriate changed message."
	
	"Removed the invariant."

	| pNode aNode |
	aNode := anEvent node.
	(pNode := aNode parentNode) isNil
		ifTrue: [ 
			self assert: (aNode isKindOf: AltTreeNodeModel) not.
			self changed: #rootNodes ]
		ifFalse: [ 
			treeMorph nodeList
				do: [ :e | 
					| r |
					(r := e findItem: pNode) notNil
						ifTrue: [ 
							| n wNode |
							r rebuildChildren.
							(n := self findMorphNodeForItem: r) notNil
								ifTrue: [ n rebuildChildren ].
							^ self ] ] ]