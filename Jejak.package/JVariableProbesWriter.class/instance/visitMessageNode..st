visiting
visitMessageNode: aNode
	"Detect at: put: and record it via a new, specific collector message. Note that, to simplify the code, the effective at:put: is sent in the Collecteur instance and not in the original code."

	| receiver arguments nodeId |
	nodeId := no.
	receiver := self visitNode: aNode receiver.
	arguments := aNode arguments collect: [ :e | self visitNode: e ].
	^ (aNode selector == #at:put: and: [ receiver isKindOf: RBVariableNode ])
		ifTrue: [ 
			RBMessageNode
				receiver: (RBLiteralValueNode value: #JCollecteur)
				selector: #assign:to:named:at:node:
				arguments:
					{(arguments last).
					receiver.
					(RBLiteralValueNode value: receiver name).
					(arguments first).
					(RBLiteralValueNode value: nodeId)} ]
		ifFalse: [ 
			RBMessageNode
				receiver: (RBLiteralValueNode value: #JCollecteur)
				selector: #record:node:value:
				arguments:
					{(RBLiteralValueNode value: aNode selector).
					(RBLiteralValueNode value: nodeId).
					(aNode
						receiver: receiver;
						arguments: arguments)} ]