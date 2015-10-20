execution
execute
	requestor selectedNode
		ifNil: [ ^ target selectRowIndex: 1 ]
		ifNotNil:
			[ :node | 
			(node isExpanded or: [ node hasContents not ])
				ifFalse: [ requestor selectedNode toggleExpanded ]
				ifTrue:
					[ target
						selectRowIndex:
							((target selectedRowIndex + 1 min: target model size) max: 1) ] ]