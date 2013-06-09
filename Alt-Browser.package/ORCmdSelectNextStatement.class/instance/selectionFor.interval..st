accessing
selectionFor: aNode interval: anInterval
	| nodes index |
	nodes := aNode methodNode allChildren
		select: [ :each | each parent isNil or: [ each parent isSequence ] ].
	index := nodes identityIndexOf: aNode statementNode ifAbsent: [ ^ aNode ].
	[ index < nodes size and: [ (nodes at: index) sourceInterval = anInterval ] ]
		whileTrue: [ index := index + 1 ].
	^ nodes at: index