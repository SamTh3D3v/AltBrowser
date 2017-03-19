initialization
initialize
	super initialize.
	self eventHandler: MorphicEventHandler new.
	self color: Color transparent.
	self setNeedsRefreshItems.
	self setNeedsRefreshRows.
	self setEnsureVisibleSelection.
	topOffset := 0.
	maximumWidth := 0.