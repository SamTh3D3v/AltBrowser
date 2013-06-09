accessing
selectPathForAbstractItem: anItem
	"Stronger than the item version, will force an opening of the ABTreeModelNodes."

	| found aClass nPath tmPath aNode |
	nPath := OrderedCollection new.
	aNode := anItem.
	[ aNode notNil ]
		whileTrue: [ 
			nPath add: aNode.
			aNode := aNode parentNode ].
	tmPath := OrderedCollection with: (tree getRoots detect: [ :r | r item == nPath last ]).
	nPath removeLast.
	nPath reverseDo: [ :n | tmPath add: (tmPath last forceFindItem: n) ].
	treeMorph selectPath: tmPath in: (treeMorph scroller submorphs at: 1 ifAbsent: [ ^ self ])