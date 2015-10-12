accessing
childNodeFromItem: anItem
	^ (self class on: anItem)
		parent: self;
		yourself