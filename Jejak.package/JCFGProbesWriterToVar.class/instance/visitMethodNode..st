visitor-double dispatching
visitMethodNode: aNode
	"Add a probe to trace the entry into the method and the included block. Add a ^self at the end of the code and a probe in it if there isn't any yet (disregard cases of code returning allways before that point; we expect smalltalk to optimise that away)."

	| body stats nodeID args2 |
	nodeID := no.
	args2 := self visitArgumentNodes: aNode arguments.
	body := self visitNode: aNode body.
	stats := body statements.
	stats
		addFirst:
			(RBMessageNode
				receiver: self collecteurVariable
				selector: #enter:selector:node:
				arguments:
					(Array
						with: (RBVariableNode named: 'self')
						with: (RBLiteralValueNode value: aNode selector)
						with: (RBLiteralValueNode value: nodeID))).
	(stats last isKindOf: RBReturnNode)
		ifFalse: [ 
			stats
				add:
					(RBReturnNode
						value:
							(RBMessageNode
								receiver: self collecteurVariable
								selector: #return:
								arguments: (Array with: (VariableNode new name: 'self')))) ].
	aNode arguments: args2.
	body statements: stats.
	aNode body: body.
	^ aNode