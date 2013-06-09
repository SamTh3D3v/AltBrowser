testing
isActive
	^ (requestor isSelected: target) and: [ (target isKindOf: ABClassNode) and: [ target theClass isTrait not ] ]