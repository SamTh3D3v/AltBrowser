testing
isActive
	^ super isActive and: [ self environment isSelectorEnvironment ]