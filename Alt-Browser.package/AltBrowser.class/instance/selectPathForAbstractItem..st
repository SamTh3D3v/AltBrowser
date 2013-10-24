accessing
selectPathForAbstractItem: anItem
	"Stronger than the item version, will force an opening of the ABTreeModelNodes."

	| nPath aNode |
	nPath := OrderedCollection new.
	aNode := anItem parentNode.
	[ aNode notNil ]
		whileTrue: [ 
			nPath add: aNode.
			aNode := aNode parentNode ].
	self history pauseDuring: [ self requestView: (MorphTreeChangeRequest expandItemPath: nPath reverse) ].
	self
		requestView:
				(MorphTreeChangeRequest new
						action: #setSelectedMorph:;
						arguments: (Array with: (self findMorphNodeForAbstractItem: anItem)));
		requestView: (MorphTreeChangeRequest new action: #adjustSubmorphPositions);
		requestView: (MorphTreeChangeRequest new action: #scrollSelectionIntoView)