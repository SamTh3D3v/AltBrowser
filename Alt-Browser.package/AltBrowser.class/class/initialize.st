initialization
initialize
	AltAnnouncer := Announcer new.
	RootItems := nil.
	self registerOnSystemAnnouncements.
	self registerInAppRegistry