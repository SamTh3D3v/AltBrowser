as yet unclassified
rootsRemove: aNode
	"Beware : a node is not an instance of ABTreeNodeModel"

	rootsHolder contents
		do: [ :e | 
			| r |
			(r := e findItem: aNode) notNil
				ifTrue: [ 
					r == e
						ifTrue: [ 
							rootsHolder remove: r.
							(self widget scroller submorphs at: 1) removeItem: r ] ] ]