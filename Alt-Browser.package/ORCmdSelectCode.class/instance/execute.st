execution
execute
	| tree node |
	tree := self currentNode hasSelector
		ifTrue: [ RBParser parseMethod: target fullText onError: [ :err :pos | ^ self ] ]
		ifFalse: [ RBParser parseExpression: target fullText onError: [ :err :pos | ^ self ] ].
	node := self 
		selectionFor: ((tree bestNodeFor: target selection)
			ifNil: [ ^ self ])
		interval: target selection.
	node isNil
		ifFalse: [ requestor selection: node sourceInterval ]