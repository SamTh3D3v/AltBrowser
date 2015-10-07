initialization
initialize 
	super initialize.
	self eventHandler: MorphicEventHandler new.
	self color: Color transparent.
	needsRefreshExposedItems := false