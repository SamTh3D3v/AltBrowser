accessing
reset
	"reset the rootItems. Should propagate to all instances as well."
	
	"AltBrowser reset"

	rootItems := self getRootItems.
	announcer announce: AltRootsReset new.