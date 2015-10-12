class initialization
initialize
	AltAnnouncer := Announcer new.
	Categories := nil.
	Root := nil.
	RecentPackages := OrderedCollection new.
	self registerOnSystemAnnouncements.
	self registerInAppRegistry.
	self createRootItems