initialization
initializeWidgets
	self instantiateModels: #(#treeModel #ABTreeModel #textModel #ABTextModel).
	textModel aboutToStyle: true.
	self focusOrder
		add: treeModel;
		add: textModel.
