visitor-double dispatching
visitMessageNode: aNode
	"trace message sends to the collecteur."

	| rcvr2 args2 nodeId |
	nodeId := no.
	rcvr2 := self visitNode: aNode receiver.
	args2 := self visitArgumentNodes: aNode arguments.
	aNode receiver: rcvr2.
	aNode arguments: args2.
	^ RBMessageNode
		receiver: self collecteurVariable
		selector: #record:node:value:
		arguments:
			(Array with: (RBLiteralValueNode value: aNode selector) with: (RBLiteralValueNode value: nodeId) with: aNode)