visitor-double dispatching
visitReturnNode: aNode
	^ aNode
		value:
			(RBMessageNode
				receiver: (RBLiteralValueNode value: #JCollecteur)
				selector: #return:
				arguments: (Array with: (self visitNode: aNode value)))