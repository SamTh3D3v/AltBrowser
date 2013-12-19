actions
doubleClickOn: anAltTreeNodeModel in: anAltBrowser
	"Handle a double click on the current node: toggle the expanded state by default, or do something else."

	(anAltBrowser findMorphNodeForItem: anAltTreeNodeModel) toggleExpandedState.
	anAltBrowser treeMorph adjustSubmorphPositions