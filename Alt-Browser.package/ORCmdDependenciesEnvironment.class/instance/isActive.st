testing
isActive
	^ super isActive and: [ self browser environment isSystem not ]