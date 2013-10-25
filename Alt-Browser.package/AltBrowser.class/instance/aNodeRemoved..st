updating
aNodeRemoved: anEvent
	"A node has been removed from the abstract tree. Rebuilt the displayed tree."

	| aNode |
	aNode := anEvent node.
	self treeMorph nodeList
		do: [ :e | 
			| r |
			(r := e findItem: aNode) notNil
				ifTrue: [ 
					r == e
						ifTrue: [ 
							rootItems := nil.
							self updateList ]
						ifFalse: [ 
							| n |
							r parentNode contents remove: r.
							(n := self findMorphNodeForItem: r) notNil
								ifTrue: [ 
									self changed: #deselectAll.
									n rebuildChildren ] ] ] ]