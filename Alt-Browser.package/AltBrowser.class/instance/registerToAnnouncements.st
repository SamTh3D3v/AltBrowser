initialize-release
registerToAnnouncements
	"Link to the AltBrowserNeo class for most updates. But only do that once we are opened."

	"Simple, reset everything update."

	self class announcer weak when: AltRootsReset send: #aRootsChanged to: self.
		"Complete, complex and more efficient update handling."
	self class announcer weak when: AltNodeRebuilt send: #aNodeRebuilt: to: self.
	self class announcer weak when: AltNodeRemoved send: #aNodeRemoved: to: self.
	self class announcer weak when: AltNodeAdded send: #aNodeAdded: to: self.
	self class announcer weak when: AltNodeUpdated send: #aNodeUpdated: to: self.
		"Track changes on the method or class definition we are editing."
	SystemAnnouncer uniqueInstance weak when: MethodModified send: #aMethodUpdated: to: self