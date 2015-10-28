initialization
initialize
	super initialize.
	self eventHandler: MorphicEventHandler new.
	self color: Color transparent.
	self setNeedsRefreshItems.
	self setNeedsRefreshRows.
	topOffset := 0.
	maximumWidth := 0.