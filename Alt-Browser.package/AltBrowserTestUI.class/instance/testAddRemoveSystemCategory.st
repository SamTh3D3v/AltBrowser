tests
testAddRemoveSystemCategory
	"Package ready, create category and remove it, check that it has disappeared."

	| n |
	self assert: (Smalltalk globals organization includesCategory: #'TestingUnderway-Core') not.
	[ 
	Smalltalk globals organization addCategory: #'TestingUnderway-Core'.
	n := browser treeMorph allNodeMorphs
		detect: [ :aNodeMorph | aNodeMorph complexContents item name = 'an AltPackageNode(TestingUnderway)' ]
		ifNone: [  ].
	self assert: n notNil.
	n expand.
	n := browser treeMorph allNodeMorphs
		detect: [ :aNodeMorph | aNodeMorph complexContents item name = 'an AltPackageTagNode(TestingUnderway-Core)' ]
		ifNone: [  ].
	self assert: n notNil.
	browser treeMorph listManager setSelectedMorph: n.
	browser treeMorph
		adjustSubmorphPositions;
		scrollSelectionIntoView.
	self assert: browser selectedItem == n complexContents.
	n complexContents item rpackage removeClassTag: #'TestingUnderway-Core'.
	Smalltalk globals organization removeCategory: #'TestingUnderway-Core'.
	n := browser treeMorph allNodeMorphs
		detect: [ :aNodeMorph | aNodeMorph complexContents item name = 'an AltPackageTagNode(TestingUnderway-Core)' ]
		ifNone: [  ].
	self assert: n isNil ]
		ensure: [ Smalltalk globals organization removeCategory: #'TestingUnderway-Core' ]