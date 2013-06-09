accessing
selectPathForItem: anItem
	"Select an object by finding it's path and all. This makes sure the tree display is entirely open for that."

	| found aClass nPath aNode |
	nPath := OrderedCollection new.
	aNode := anItem.
	[ aNode notNil ]
		whileTrue: [ 
			nPath addFirst: aNode.
			aNode := aNode parentNode ].
	treeMorph selectPath: nPath in: (treeMorph scroller submorphs at: 1 ifAbsent: [ ^ self ])