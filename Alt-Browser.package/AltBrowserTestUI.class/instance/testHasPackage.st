tests
testHasPackage
	"Test if our package for testing is there."

	self
		assert:
			(browser treeMorph allNodeMorphs
				detect: [ :aNodeMorph | 
					aNodeMorph complexContents item isPackageSetNode
						and: [ aNodeMorph complexContents item packageName = 'Alt-Testing-Underway' ] ]
				ifNone: [  ]) notNil