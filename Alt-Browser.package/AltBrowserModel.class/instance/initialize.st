initialize-release
initialize
	"Link to the AltBrowser class for most updates."

	self class announcer weak on: AltRootsReset send: #reset to: self.
	self class announcer weak on: AltNodeRebuilt send: #aNodeRebuilt: to: self.
	self class announcer weak on: AltNodeRemoved send: #aNodeRemoved: to: self.
	self class announcer weak on: AltNodeAdded send: #aNodeAdded: to: self.
	self class announcer weak on: AltNodeUpdated send: #aNodeUpdated: to: self.
	SystemAnnouncer uniqueInstance weak on: MethodModified send: #aMethodUpdated: to: self