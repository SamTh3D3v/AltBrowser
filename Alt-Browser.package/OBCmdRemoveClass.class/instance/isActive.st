testing
isActive
	^ (target isKindOf: ABClassNode) and: [requestor isSelected: target]