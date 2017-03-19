visiting
visitAssignmentNode: aNode
	"Replace the assignment by a message node holding the assignment as one of the arguments."

	| var2 val2 nodeId |
	nodeId := no.
	var2 := self visitNode: aNode variable.
	val2 := self visitNode: aNode value.
	^RBMessageNode 
		receiver: (RBLiteralValueNode value: #JCollecteur)
		selector: #assign:to:node:
		arguments: (Array 
				with: (aNode variable: var2; value: val2)
				with: (RBLiteralValueNode value: var2 name)
				with: (RBLiteralValueNode value: nodeId))