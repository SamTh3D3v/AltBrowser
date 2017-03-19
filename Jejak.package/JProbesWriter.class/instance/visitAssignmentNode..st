visiting
visitAssignmentNode: aNode
	| var2 val2 |
	var2 := self visitNode: aNode variable.
	val2 := self visitNode: aNode value.
	val2 == aNode value
		ifFalse: [ aNode variable: var2 ].
	var2 == aNode
		ifFalse: [ aNode value: val2 ].
	^ aNode