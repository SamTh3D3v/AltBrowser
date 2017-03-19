visitor-double dispatching
visitMethodNode: aNode
	| block2 nodeId |
	nodeId := no.
	block2 := self visitNode: aNode body.
	block2 statements
		addFirst:
			(RBMessageNode
				receiver: (RBVariableNode named: 'ThreadedCollecteur')
				selector: #enter:selector:node:
				arguments:
					(Array
						with: (RBVariableNode named: mclass name)
						with: (RBLiteralValueNode value: aNode selector)
						with: (RBLiteralValueNode value: nodeId))).
	^ aNode body: block2