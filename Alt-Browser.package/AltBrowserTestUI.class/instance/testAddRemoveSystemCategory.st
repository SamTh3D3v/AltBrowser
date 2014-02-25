tests
testAddRemoveSystemCategory
	"Package ready, create category and remove it, check that it has disappeared."

	| n |
	self assert: (Smalltalk globals organization includesCategory: #'Alt-Testing-Underway-Core') not.
	[ 
	Smalltalk globals organization addCategory: #'Alt-Testing-Underway-Core'.
	n := browser treeMorph allNodeMorphs
		detect: [ :aNodeMorph | aNodeMorph complexContents item name = 'an AltPackageNode(Alt-Testing-Underway)' ]
		ifNone: [  ].
	self assert: n notNil.
	n expand.
	n := browser treeMorph allNodeMorphs
		detect: [ :aNodeMorph | aNodeMorph complexContents item name = 'an AltPackageTagNode(Alt-Testing-Underway-Core)' ]
		ifNone: [  ].
	self assert: n notNil.
	browser treeMorph listManager setSelectedMorph: n.
	browser treeMorph
		adjustSubmorphPositions;
		scrollSelectionIntoView.
	self assert: browser selectedItem == n complexContents.
	n complexContents item item package removeClassTag: #'Alt-Testing-Underway-Core'.
	Smalltalk globals organization removeCategory: #'Alt-Testing-Underway-Core'.
	n := browser treeMorph allNodeMorphs
		detect: [ :aNodeMorph | aNodeMorph complexContents item name = 'an AltPackageTagNode(Alt-Testing-Underway-Core)' ]
		ifNone: [  ].
	self assert: n isNil ]
		ensure: [ Smalltalk globals organization removeCategory: #'Alt-Testing-Underway-Core' ]