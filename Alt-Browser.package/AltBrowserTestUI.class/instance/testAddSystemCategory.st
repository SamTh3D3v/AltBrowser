tests
testAddSystemCategory
	"Package ready, create category and run."

	| n |
	self assert: (Smalltalk globals organization includesCategory: #'Alt-Testing-Underway-Core') not.
	[ 
	Smalltalk globals organization addCategory: #'Alt-Testing-Underway-Core'.
	n := browser treeMorph allNodeMorphs
		detect: [ :aNodeMorph | aNodeMorph complexContents item name = 'an AltRPackageNode(Alt-Testing-Underway)' ]
		ifNone: [  ].
	self assert: n notNil.
	n expand.
	n := browser treeMorph allNodeMorphs
		detect: [ :aNodeMorph | aNodeMorph complexContents item name = 'an AltRPackageTagNode(Core)' ]
		ifNone: [  ].
	self assert: n notNil.
	browser treeMorph listManager setSelectedMorph: n.
	browser treeMorph
		adjustSubmorphPositions;
		scrollSelectionIntoView.
	self assert: browser selectedItem == n complexContents ]
		ensure: [ Smalltalk globals organization removeCategory: #'Alt-Testing-Underway-Core' ]