actions
doubleClickOn: anAlTreeNodeModel in: anAlTreeModel
	"Handle a double click on the current node: toggle the expanded state by default, or do something else."

	(anAlTreeModel findMorphNodeForItem: anAlTreeNodeModel) toggleExpandedState.
	anAlTreeModel treeMorph adjustSubmorphPositions