testing
isActive
	^ super isActive and: [ target hasSelector ]