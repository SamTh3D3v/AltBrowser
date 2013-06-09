as yet unclassified
rootsRemovePackage: aNode
	"Beware : a node is not an instance of ABTreeNodeModel. It may also not exist yet."

	(rootsHolder contents select: [ :e | e hasContents ])
		do: [ :e | 
			| z |
			z := e contents detect: [ :l | l item == aNode ] ifNone: [ nil ].
			z isNil
				ifFalse: [ 
					e contents remove: z.
					self
						changed:
							{#removeItem.
							z} ] ]