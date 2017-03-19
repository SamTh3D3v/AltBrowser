visiting
visitBlockNode: aNode
	| args body |
	args := self visitArgumentNodes: aNode arguments.
	body := self visitNode: aNode body.
	args == aNode arguments
		ifFalse: [ aNode arguments: args ].
	body == aNode body
		ifFalse: [ aNode statements: body ].
	^ aNode