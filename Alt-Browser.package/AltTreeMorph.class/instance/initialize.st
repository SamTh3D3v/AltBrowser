initialization
initialize
	super initialize.
	self color: self backgroundColor.
	selectedRowIndexes := #().
	self
		dragEnabled: true;
		dropEnabled: true;
		initializeScrollBars;
		initializeContainer;
		resizeAllSubviews