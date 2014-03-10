accessing
removeRootItem: aNode
	self rootItems remove: aNode.
	self announcer announce: AltRootsReset new