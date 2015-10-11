initialization
initialize
	super initialize.
	self color: self backgroundColor.
	selectedRowIndexes := #().
	highlightedRowIndexes := #().
	showIndex := 0.
	self
		dragEnabled: true;
		dropEnabled: true;
		initializeScrollBars;
		initializeContainer;
		initializeKeyBindings;
		resizeAllSubviews