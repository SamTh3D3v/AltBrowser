accessing
replaceRootItem: aNode with: anotherNode
	self rootItems at: (self rootItems indexOf: aNode) put: anotherNode.
	self announcer announce: AltRootsReset new