tests
testHasPackage
	"Test if our package for testing is there."

	self
		assert:
			(browser treeMorph allNodeMorphs
				detect: [ :aNodeMorph | aNodeMorph complexContents item isPackageNode and: [ aNodeMorph complexContents item packageName = 'TestingUnderway' ] ]
				ifNone: [  ]) notNil