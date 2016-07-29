visiting
visitMethodNode: aNode
	"Add a probe to trace the entry into the method and the included block. Add a ^self at the end of the code and a probe in it if there isn't any yet (disregard cases of code returning allways before that point; we expect smalltalk to optimise that away)."

	| body stats nodeId args2 |
	nodeId := no.
	args2 := self visitArgumentNodes: aNode arguments.
	body := self visitNode: aNode body.
	stats := body statements.
	args2 isEmpty
		ifFalse: [ 
			args2
				reverseDo: [ :a | 
					stats
						addFirst:
							(RBMessageNode
								receiver: (RBLiteralValueNode value: #JCollecteur)
								selector: #assign:to:node:
								arguments:
									{a.
									(RBLiteralValueNode value: a name).
									(RBLiteralValueNode value: nodeId)}) ] ].
	stats
		addFirst:
			(RBMessageNode
				receiver: (RBLiteralValueNode value: #JCollecteur)
				selector: #enter:selector:node:
				arguments:
					(Array
						with: (RBVariableNode named: 'self')
						with: (RBLiteralValueNode value: aNode selector)
						with: (RBLiteralValueNode value: nodeId))).
	(stats last isKindOf: RBReturnNode)
		ifFalse: [ 
			stats
				add:
					(RBReturnNode
						value:
							(RBMessageNode
								receiver: (RBLiteralValueNode value: #JCollecteur)
								selector: #return:
								arguments: (Array with: (RBVariableNode named: 'self')))) ].
	aNode arguments: args2.
	body statements: stats.
	aNode body: body.
	^ aNode