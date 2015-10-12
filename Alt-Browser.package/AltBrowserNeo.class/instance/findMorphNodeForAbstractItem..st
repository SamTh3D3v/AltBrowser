accessing
findMorphNodeForAbstractItem: anItem
	^ self treeMorph allNodeMorphs
		detect: [ :aNodeMorph | aNodeMorph complexContents ifNil: [ false ] ifNotNil: [ :cC | cC item == anItem ] ]
		ifNone: [ nil ]