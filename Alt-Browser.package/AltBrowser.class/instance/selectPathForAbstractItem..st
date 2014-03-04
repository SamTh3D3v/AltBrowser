accessing
selectPathForAbstractItem: anItem
	"Stronger than the item version, will force an opening of the AltTreeModelNodes. We can't use expandItemPath because some of the items may not be visible (filtered) and then we need to look and open them one by one. But we don't have to pause the history because then we don't select upon expanding, as openPath does."

	| nPath aNode aNodeMorph |
	nPath := OrderedCollection new.
	aNode := anItem parent.
	[ aNode notNil ]
		whileTrue: [ 
			nPath add: aNode.
			aNode := aNode parent ].
	nPath
		reverseDo: [ :each | 
			(self findMorphNodeForAbstractItem: each)
				ifNotNil: [ :aMorph | 
					aMorph isExpanded
						ifFalse: [ aMorph toggleExpandedState ] ] ].
	aNodeMorph := self findMorphNodeForAbstractItem: anItem.
	self
		requestView:
				(MorphTreeChangeRequest new
						action: #setSelectedMorph:;
						arguments: {aNodeMorph};
						yourself);
		requestView: (MorphTreeChangeRequest new action: #adjustSubmorphPositions);
		requestView: (MorphTreeChangeRequest new action: #scrollSelectionIntoView).
	^ aNodeMorph notNil