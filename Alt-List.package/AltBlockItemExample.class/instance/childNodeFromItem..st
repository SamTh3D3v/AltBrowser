accessing
childNodeFromItem: anItem
	^ (self class on: anItem)
		parent: self;
		childrenBlock: childrenBlock;
		yourself