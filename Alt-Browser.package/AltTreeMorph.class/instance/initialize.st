initialization
initialize
	super initialize.
	self color: self backgroundColor.
	selectedRowIndexes := #().
	highlightedRowIndexes := #().
	self initializeScrollBars.
	self initializeContainer.
	self initializeKeyBindings.
	self resizeAllSubviews