testing
isActive
	^ super isActive and: [ self environment isSystem not ]