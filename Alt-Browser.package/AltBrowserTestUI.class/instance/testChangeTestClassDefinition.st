tests
testChangeTestClassDefinition
	"Select our test class and check that the class definition is correctly updated."

	| n |
	n := browser treeMorph allNodeMorphs
		detect: [ :aNodeMorph | aNodeMorph complexContents item isPackageNode and: [ aNodeMorph complexContents item packageName = 'TestingUnderway' ] ]
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
	self assert: browser textMorph text = 'Object subclass: #AltTestingClass
	instanceVariableNames: ''''
	classVariableNames: ''''
	poolDictionaries: ''''
	category: ''TestingUnderway'''.
	Object
		subclass: #AltTestingClass
		instanceVariableNames: 'aVariable'
		classVariableNames: ''
		poolDictionaries: ''
		category: 'TestingUnderway'.
	self assert: browser textMorph text = 'Object subclass: #AltTestingClass
	instanceVariableNames: ''aVariable''
	classVariableNames: ''''
	poolDictionaries: ''''
	category: ''TestingUnderway'''.


	