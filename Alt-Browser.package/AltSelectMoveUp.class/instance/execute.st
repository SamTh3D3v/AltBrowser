execution
execute
	requestor selectedNode
		ifNil: [ ^ target selectRowIndex: 1 ]
		ifNotNil:
			[ :node | 
			(node isExpanded not or: [ node hasContents not ])
				ifFalse: [ requestor selectedNode toggleExpanded ]
				ifTrue:
					[ target selectRowIndex: (target selectedRowIndex - 1 max: 1) ] ]