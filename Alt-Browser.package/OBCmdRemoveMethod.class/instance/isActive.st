testing
isActive
	^ (target isKindOf: ABMethodNode) and: [requestor isSelected: target]