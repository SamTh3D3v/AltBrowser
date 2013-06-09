initialization
initialize
	super initialize.
	self class rootItems whenChangedDo: [ self reset ]