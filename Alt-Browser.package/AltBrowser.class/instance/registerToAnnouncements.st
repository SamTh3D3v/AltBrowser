initialize-release
registerToAnnouncements
	"Link to the AltBrowser class for most updates. But only do that once we are opened."

		"Simple, reset everything update."
	self class announcer weak on: AltRootsReset send: #aRootsChanged to: self.
		"Complete, complex and more efficient update handling."
	self class announcer weak on: AltNodeRebuilt send: #aNodeRebuilt: to: self.
	self class announcer weak on: AltNodeRemoved send: #aNodeRemoved: to: self.
	self class announcer weak on: AltNodeAdded send: #aNodeAdded: to: self.
	self class announcer weak on: AltNodeUpdated send: #aNodeUpdated: to: self.
		"Track changes on the method we are editing."
	SystemAnnouncer uniqueInstance weak on: MethodModified send: #aMethodUpdated: to: self