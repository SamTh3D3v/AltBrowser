visiting
visitBlockNode: aNode 
	"Don't know what args are, but I'll suppose they are variables. Or do I need to track variables that are read? Everywhere in the code?"

	| body args stats last nodeId |
	nodeId := no.
	args := self visitArgumentNodes: aNode arguments.
	body := self visitNode: aNode body.
	stats := body statements asOrderedCollection.
	args isEmpty 
		ifFalse: 
			[args reverseDo: 
					[:a | 
					stats addFirst: (RBMessageNode  
								receiver: (RBLiteralValueNode value: #JCollecteur)
								selector: #assign:to:node:
								arguments: (Array 
										with: a
										with: (RBLiteralValueNode value: a name)
										with: (RBLiteralValueNode value: nodeId)))]].
	stats addFirst: (RBMessageNode 
				receiver: (RBLiteralValueNode value: #JCollecteur)
				selector: #enter:
				arguments: (Array with: (RBLiteralValueNode value: nodeId))).
	last := stats last.
	(last isKindOf: RBReturnNode)
		ifFalse: 
			[stats removeLast.
			stats add: (RBMessageNode 
						receiver: (RBLiteralValueNode value: #JCollecteur)
						selector: #exit:
						arguments: (Array with: last))].
	body statements: stats.
	aNode
		arguments: args;
		body: body.
	^ aNode