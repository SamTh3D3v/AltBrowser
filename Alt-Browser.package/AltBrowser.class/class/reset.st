accessing
reset
	"reset the rootItems. Should propagate to all instances as well."

	"AltBrowser reset"

	RootItems := self getRootItems.
	self announcer announce: AltRootsReset new