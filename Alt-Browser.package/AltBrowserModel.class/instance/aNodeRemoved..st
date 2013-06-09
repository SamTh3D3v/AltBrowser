updating
aNodeRemoved: aNode
	"Beware : a node is not an instance of ABTreeNodeModel"

	self assert: aNode isTreeNodeModel not.
	tree roots
		do: [ :e | 
			| r |
			(r := e findItem: aNode) notNil
				ifTrue: [ 
					r == e
						ifTrue: [ tree roots remove: r ifAbsent: [ nil ] ]
						ifFalse: [ 
							| n |
							r parentNode contents remove: r.
							(n := (treeMorph scroller submorphs at: 1) findItem: r) notNil
								ifTrue: [ n rebuildChildren ].
							(treeMorph scroller submorphs at: 1) checkInvariant ] ] ]