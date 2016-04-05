initialization
initialize
	super initialize.
	self color: self backgroundColor.
	self
		dragEnabled: true;
		dropEnabled: true;
		initializeScrollBars;
		initializeContainer;
		resizeAllSubviews