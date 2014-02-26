accessing
selectPathForAbstractItem: anItem
	"Stronger than the item version, will force an opening of the AltTreeModelNodes."

	| nPath aNode aNodeMorph |
	nPath := OrderedCollection new.
	aNode := anItem parentNode.
	[ aNode notNil ]
		whileTrue: [ 
			nPath add: aNode.
			aNode := aNode parentNode ].
	self history pauseDuring: [ self requestView: (MorphTreeChangeRequest expandItemPath: nPath reverse) ].
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