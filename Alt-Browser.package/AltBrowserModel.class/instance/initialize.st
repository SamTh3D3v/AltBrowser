initialize-release
initialize
	"Link to the AltBrowser class for most updates."
	
		"Complete, complex and more efficient update handling."
	self class announcer weak on: AltRootsReset send: #aRootsChanged to: self.

	self class announcer weak on: AltNodeRebuilt send: #aNodeRebuilt: to: self.
"	self class announcer weak on: AltNodeRemoved send: #aNodeRemoved: to: self."
	self class announcer weak on: AltNodeAdded send: #aNodeAdded: to: self.
"	self class announcer weak on: AltNodeUpdated send: #aNodeUpdated: to: self."
		"Simple, but heavy on the GUI side for updates"
	self class announcer weak
		on: AltNodeRemoved , AltNodeUpdated
		send: #aRootsChanged
		to: self.
		"Track changes on the method we are editing."
	SystemAnnouncer uniqueInstance weak on: MethodModified send: #aMethodUpdated: to: self