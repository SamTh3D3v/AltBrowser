visitor-double dispatching
visitMessageNode: aNode
	"trace message sends to the collecteur."

	| rcvr2 args2 nodeId |
	nodeId := no.
	(aNode isCascaded not or: [ aNode isFirstCascaded ])
		ifTrue: [ rcvr2 := self visitNode: aNode receiver ].
	args2 := self visitArgumentNodes: aNode arguments.
	aNode receiver: rcvr2.
	aNode arguments: args2.
	^ RBMessageNode
		receiver: (RBLiteralValueNode value: #JCollecteur)
		selector: #record:node:value:
		arguments:
			(Array with: (RBLiteralValueNode value: aNode selector) with: (RBLiteralValueNode value: nodeId) with: aNode)