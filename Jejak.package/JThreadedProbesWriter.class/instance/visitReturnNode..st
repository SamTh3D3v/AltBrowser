visitor-double dispatching
visitReturnNode: aNode
	| ensureNode receiverNode |
	ensureNode := RBBlockNode
		body:
			(RBSequenceNode new
				statements:
					(Array
						with:
							(RBMessageNode new receiver: (RBVariableNode named: 'ThreadedCollecteur') selector: #exitLevel arguments: #()))).
	receiverNode := RBBlockNode body: (RBSequenceNode statements: (Array with: (self visitNode: aNode value))).
	^ aNode value: (RBMessageNode receiver: receiverNode selector: #ensure: arguments: (Array with: ensureNode))