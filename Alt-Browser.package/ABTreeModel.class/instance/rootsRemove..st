accessing
rootsRemove: aNode
	"Beware : a node is not an instance of ABTreeNodeModel"

	self assert: (aNode isTreeNodeModel not).
	rootsHolder contents
		do: [ :e | 
			| r |
			(r := e findItem: aNode) notNil
				ifTrue: [ 
					r == e
						ifTrue: [ rootsHolder remove: r ]
						ifFalse: [ r parentNode contents remove: r ].
						((self widget scroller submorphs at: 1) removeItem: r) ] ]