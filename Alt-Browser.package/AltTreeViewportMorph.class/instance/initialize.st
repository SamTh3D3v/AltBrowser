initialization
initialize
	super initialize.
	self eventHandler: MorphicEventHandler new.
	self color: Color transparent.
	self setNeedsRefreshItems.
	self setNeedsRefreshRows.
	endIndex := 0.
	fullyVisibleEndIndex := 0.
	verticalValue := 0.0