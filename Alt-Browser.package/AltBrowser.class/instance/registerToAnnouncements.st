initialize-release
registerToAnnouncements
	"Link to the AltBrowser class for most updates. But only do that once we are opened."

	"Simple, reset everything update."

	self class announcer when: AltRootsReset send: #aRootsChanged to: self.
		"Complete, complex and more efficient update handling."
	self class announcer when: AltNodeRebuilt send: #aNodeRebuilt: to: self.
	self class announcer when: AltNodeRemoved send: #aNodeRemoved: to: self.
	self class announcer when: AltNodeAdded send: #aNodeAdded: to: self.
	self class announcer when: AltNodeUpdated send: #aNodeUpdated: to: self.
		"Track changes on the method or class definition we are editing."
	SystemAnnouncer uniqueInstance when: MethodModified send: #aMethodUpdated: to: self