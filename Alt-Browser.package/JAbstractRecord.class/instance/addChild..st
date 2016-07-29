accessing
addChild: aNode
	children isNil ifTrue: [children := LinkedList new].
	children addLast: aNode