visitor-double dispatching
visitMessageNode: aNode
	"trace the message send."

	| node rcvr2 args2 nodeId |
	nodeId := no.
	rcvr2 := self visitNode: aNode receiver.
	args2 := self visitArgumentNodes: aNode arguments.
	node := RBMessageNode receiver: rcvr2 selector: aNode selector arguments: args2.
	^ RBMessageNode new
		receiver: (RBBlockNode body: (RBSequenceNode statements: (Array with: node)))
		selector: #ensure:
		arguments:
			{(RBBlockNode
				body:
					(RBSequenceNode
						statements:
							{(RBMessageNode
								receiver: (RBVariableNode named: 'ThreadedCollecteur')
								selector: #record:node:
								arguments:
									{(RBLiteralValueNode value: aNode selector).
									(RBLiteralValueNode value: nodeId)})}))}