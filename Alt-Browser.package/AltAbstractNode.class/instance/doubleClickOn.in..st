actions
doubleClickOn: anAltTreeNodeModel in: anAltBrowser
	(anAltBrowser findMorphNodeForItem: anAltTreeNodeModel) toggleExpandedState.
	anAltBrowser treeMorph adjustSubmorphPositions