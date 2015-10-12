initialization
initialize
	super initialize.
	self color: self backgroundColor.
	selectedRowIndexes := #().
	showIndex := 0.
	self
		dragEnabled: true;
		dropEnabled: true;
		initializeScrollBars;
		initializeContainer;
		initializeKeyBindings;
		resizeAllSubviews