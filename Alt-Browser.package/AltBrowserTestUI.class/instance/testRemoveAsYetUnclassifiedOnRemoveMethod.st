tests
testRemoveAsYetUnclassifiedOnRemoveMethod
	"Test if not yet classified is correctly handled."

	| n |
	n := browser treeMorph allNodeMorphs
		detect: [ :aNodeMorph | 
			(aNodeMorph complexContents item isPackageSetNode or: [ aNodeMorph complexContents item isPackageNode ])
				and: [ aNodeMorph complexContents item packageName = 'TestingUnderway' ] ]
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
	self assert: browser selectedItem == n complexContents.
	n expand.
	(Smalltalk at: #AltTestingClass) compile: 'test ^ true'.
	n := browser treeMorph allNodeMorphs
		detect: [ :aNodeMorph | 
			aNodeMorph complexContents item isMethodCategoryNode
				and: [ aNodeMorph complexContents item methodCategory = #'as yet unclassified' ] ]
		ifNone: [  ].
	self assert: n notNil.
	(Smalltalk at: #AltTestingClass) removeSelector: #test.
	n := browser treeMorph allNodeMorphs
		detect: [ :aNodeMorph | 
			aNodeMorph complexContents item isMethodCategoryNode
				and: [ aNodeMorph complexContents item methodCategory = #'as yet unclassified' ] ]
		ifNone: [  ].
	self assert: n isNil