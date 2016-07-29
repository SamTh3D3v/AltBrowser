visitor-double dispatching
visitBlockNode: aNode
	"Arguments are the block arguments, instances of RBVariableNode."

	| body args stats last nodeId |
	nodeId := no.
	args := self visitArgumentNodes: aNode arguments.
	body := self visitNode: aNode body.
	stats := body statements asOrderedCollection.
	stats
		addFirst:
			(RBMessageNode
				receiver: self collecteurVariable
				selector: #enter:
				arguments: (Array with: (RBLiteralValueNode value: nodeId))).
	(stats last isKindOf: RBReturnNode)
		ifFalse: [ 
			last := stats removeLast.
			stats add: (RBMessageNode receiver: self collecteurVariable selector: #exit: arguments: (Array with: last)) ].
	body statements: stats.
	aNode
		arguments: args;
		body: body.
	^ aNode