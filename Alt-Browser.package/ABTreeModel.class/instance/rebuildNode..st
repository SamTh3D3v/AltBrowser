accessing
rebuildNode: aNode
	| r |
	r := ((self widget scroller submorphs at: 1) findItem: aNode).
	r notNil ifTrue: [r rebuildChildren]