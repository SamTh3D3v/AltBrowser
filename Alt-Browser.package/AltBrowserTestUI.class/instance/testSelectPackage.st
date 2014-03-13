tests
testSelectPackage
	"Test if our package for testing is there."

	| n |
	n := browser treeMorph allNodeMorphs
		detect: [ :aNodeMorph | 
			(aNodeMorph complexContents item isPackageSetNode or: [aNodeMorph complexContents item isPackageNode])
				and: [ aNodeMorph complexContents item packageName = 'TestingUnderway' ] ]
		ifNone: [  ].
	self assert: n notNil.
	browser treeMorph listManager setSelectedMorph: n.
	browser treeMorph
		adjustSubmorphPositions;
		scrollSelectionIntoView.
	self assert: browser selectedItem == n complexContents