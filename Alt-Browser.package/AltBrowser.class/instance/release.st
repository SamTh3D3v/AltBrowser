initialize-release
release
	self class announcer unsubscribe: self.
	SystemAnnouncer uniqueInstance unsubscribe: self.
	super release