accessing
reset
	"Reset this node: purge all, rebuilt."

	self item removeAll.
	AltBrowserNeo aNodeToRebuilt: self