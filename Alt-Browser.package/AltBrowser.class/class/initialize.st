initialization
initialize
	announcer := Announcer new.
	rootItems := nil.
	self registerOnSystemAnnouncements.
	self registerInAppRegistry
