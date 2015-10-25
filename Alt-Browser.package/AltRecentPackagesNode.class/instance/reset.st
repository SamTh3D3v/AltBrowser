accessing
reset
	"Reset this node: purge all, rebuilt."

	self item removeAll.
	AltBrowser aNodeToRebuilt: self.
	AltBrowserNeo aNodeToRebuilt: self