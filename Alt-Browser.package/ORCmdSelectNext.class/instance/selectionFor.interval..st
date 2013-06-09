accessing
selectionFor: aNode interval: anInterval
	| nodes index |
	nodes := aNode methodNode allChildren.
	index := nodes identityIndexOf: aNode ifAbsent: [ ^ aNode ].
	[ index < nodes size and: [ (nodes at: index) sourceInterval = anInterval ] ]
		whileTrue: [ index := index + 1 ].
	^ nodes at: index