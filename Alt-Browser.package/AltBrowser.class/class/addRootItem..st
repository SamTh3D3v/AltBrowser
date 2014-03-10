accessing
addRootItem: aNode
	self rootItems add: aNode.
	self announcer announce: AltRootsReset new