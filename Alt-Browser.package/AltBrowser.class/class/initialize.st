class initialization
initialize
	AltAnnouncer := Announcer new.
	RootItems := nil.
	Categories := nil.
	self registerOnSystemAnnouncements.
	self registerInAppRegistry