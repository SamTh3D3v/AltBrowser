updating
aRootsChanged
	"C'est vraiment bourrin, mais ça marche, tout en perdant la selection cependant."

	self requestView: MorphTreeChangeRequest deselectAll.
	rootItems := nil.
	self updateList.
	history initialize