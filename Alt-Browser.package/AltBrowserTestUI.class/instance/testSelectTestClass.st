tests
testSelectTestClass
	"Test if our class for testing is there."

	| n |
	n := browser treeMorph allNodeMorphs
		detect: [ :aNodeMorph | 
			(aNodeMorph complexContents item isPackageSetNode or: [ aNodeMorph complexContents item isPackageNode ])
				and: [ aNodeMorph complexContents item packageName = 'Alt-Testing-Underway' ] ]
		ifNone: [  ].
	self assert: n notNil.
	n expand.
	n := browser treeMorph allNodeMorphs
		detect: [ :aNodeMorph | aNodeMorph complexContents item isClassNode and: [ aNodeMorph complexContents item title = 'AltTestingClass' ] ]
		ifNone: [  ].
	self assert: n notNil.
	browser treeMorph listManager setSelectedMorph: n.
	browser treeMorph
		adjustSubmorphPositions;
		scrollSelectionIntoView.
	self assert: browser selectedItem == n complexContents