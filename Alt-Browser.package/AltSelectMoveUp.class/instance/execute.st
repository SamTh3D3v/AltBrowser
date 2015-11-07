execution
execute
	requestor selectedNode
		ifNil: [ ^ target selectRowIndex: 1 ]
		ifNotNil:
			[ :node | 
			(node isExpanded not or: [ node hasContents not ])
				ifFalse: [ node toggleExpanded ]
				ifTrue:
					[ (node root indexOf: node parent)
						ifNil: [ target selectRowIndex: (target selectRowIndex - 1 max: 1) ]
						ifNotNil: [ :i | target selectRowIndex: (i max: 1) ] ] ]