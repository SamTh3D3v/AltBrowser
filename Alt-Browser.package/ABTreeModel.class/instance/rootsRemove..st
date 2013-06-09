accessing
rootsRemove: aNode
	"Beware : a node is not an instance of ABTreeNodeModel"

	self assert: aNode isTreeNodeModel not.
	rootsHolder contents
		do: [ :e | 
			| r |
			(r := e findItem: aNode) notNil
				ifTrue: [ 
					r == e
						ifTrue: [ rootsHolder remove: r ifAbsent: [ nil ] ]
						ifFalse: [ 
							| n |
							r parentNode contents remove: r.
							(n := (self widget scroller submorphs at: 1) findItem: r) notNil
								ifTrue: [ n rebuildChildren ].
							(self widget scroller submorphs at: 1) checkInvariant ] ] ]