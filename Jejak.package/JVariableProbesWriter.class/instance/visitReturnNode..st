visiting
visitReturnNode: aNode
	| nodeId |
	nodeId := no.
	^ aNode
		value:
			(RBMessageNode
				receiver: (RBLiteralValueNode value: #JCollecteur)
				selector: #return:node:
				arguments: (Array with: (self visitNode: aNode value) with: (RBLiteralValueNode value: nodeId)))