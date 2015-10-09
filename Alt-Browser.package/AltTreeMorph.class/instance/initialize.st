initialization
initialize
	super initialize.
	self color: self backgroundColor.
	selectedRowIndexes := #().
	highlightedRowIndexes := #().
	showIndex := 0.
	self initializeScrollBars.
	self initializeContainer.
	self initializeKeyBindings.
	self resizeAllSubviews