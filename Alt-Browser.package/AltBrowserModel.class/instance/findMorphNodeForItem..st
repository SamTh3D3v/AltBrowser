accessing
findMorphNodeForItem: anItem
	^ treeMorph allNodeMorphs detect: [ :aNodeMorph | aNodeMorph complexContents == anItem ] ifNone: [ nil ]