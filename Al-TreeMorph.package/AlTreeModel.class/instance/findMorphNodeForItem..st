accessing
findMorphNodeForItem: anItem
	^ self treeMorph allNodeMorphs detect: [ :aNodeMorph | aNodeMorph complexContents == anItem ] ifNone: [ nil ]