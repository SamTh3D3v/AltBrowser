accessing
selectPathForAbstractItem: anItem
	"Stronger than the item version, will force an opening of the AltTreeItemNodes."

	| nPath aNode |
	nPath := OrderedCollection new.
	aNode := anItem parent.
	[ aNode notNil and: [ aNode parent notNil ] ]
		whileTrue: [ nPath add: aNode.
			aNode := aNode parent ].
	nPath
		reverseDo:
			[ :each | 
			(self root findItem: each)
				ifNil: [ self halt ]
				ifNotNil: [ :anItemModel | anItemModel expand ] ].
	^ (self root findItem: anItem)
		ifNotNil:
			[ :anItemModel | 
			treeMorph selectRowIndex: (self root indexOf: anItemModel).
			true ]
		ifNil: [ false ]