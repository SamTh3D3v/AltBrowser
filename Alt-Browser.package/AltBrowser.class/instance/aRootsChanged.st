updating
aRootsChanged
	"C'est vraiment bourrin, mais ça marche, tout en perdant la selection cependant."

	self changed: #deselectAll.
	rootItems := nil.
	self changed: #rootNodes.
	history initialize