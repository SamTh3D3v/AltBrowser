accessing
findMorphNodeForAbstractItem: anItem
	^ self treeMorph allNodeMorphs detect: [ :aNodeMorph | aNodeMorph complexContents item == anItem ] ifNone: [ nil ]