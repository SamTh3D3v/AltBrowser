class initialization
initialize
	AltAnnouncer := Announcer new.
	Categories := nil.
	RecentPackages := OrderedCollection new.
	self registerOnSystemAnnouncements.
	self registerInAppRegistry