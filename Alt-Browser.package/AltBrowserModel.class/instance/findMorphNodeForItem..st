accessing
findMorphNodeForItem: anItem
	^ treeMorph allNodeMorphs detect: [ :aNodeMorph | aNodeMorph complexContents item == anItem ] ifNone: [ nil ]