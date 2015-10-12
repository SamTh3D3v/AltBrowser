accessing
reset
	"reset the rootItems. Should propagate to all instances as well."

	"AltBrowserNeo reset"

	Root := nil.
	self announcer announce: AltRootsReset new