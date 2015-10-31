execution
execute
	"Toggle the node."

	requestor selectedNode
		ifNil: [ ^ self ]
		ifNotNil: [ :node | 
			node hasContents
				ifTrue: [ node toggleExpanded ] ]