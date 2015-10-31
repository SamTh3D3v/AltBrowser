accessing
selectPathForAbstractItem: anItem
	"Stronger than the item version, will force an opening of the AltTreeModelNodes. We can't use expandItemPath because some of the items may not be visible (filtered) and then we need to look and open them one by one. But we don't have to pause the history because then we don't select upon expanding, as openPath does."

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
				ifNotNil: [ :anItemModel | anItemModel isExpanded: true ] ].
	^ (self root findItem: anItem)
		ifNotNil:
			[ :anItemModel | 
			treeMorph selectRowIndex: (self root indexOf: anItemModel).
			true ]
		ifNil: [ false ]