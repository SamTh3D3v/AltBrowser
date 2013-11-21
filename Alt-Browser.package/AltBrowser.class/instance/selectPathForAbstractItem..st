accessing
selectPathForAbstractItem: anItem
	"Stronger than the item version, will force an opening of the AltreeModelNodes."

	| nPath aNode |
	nPath := OrderedCollection new.
	aNode := anItem parentNode.
	[ aNode notNil ]
		whileTrue: [ 
			nPath add: aNode.
			aNode := aNode parentNode ].
	self history pauseDuring: [ self changed: #(#rootNodes #openItemPath) , nPath reverse ].
	treeMorph listManager setSelectedMorph: (self findMorphNodeForAbstractItem: anItem).
	treeMorph
		adjustSubmorphPositions;
		scrollSelectionIntoView	"TODO: move that line into MorphTreeMorph and raise an issue."