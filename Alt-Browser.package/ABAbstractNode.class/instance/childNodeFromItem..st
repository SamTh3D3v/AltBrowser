private
childNodeFromItem: anItem
	^ ((self childNodeClassFromItem: anItem) with: anItem)
		parentNode: self;
		yourself