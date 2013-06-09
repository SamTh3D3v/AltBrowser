testing
isActive
	^ target isCategoryNode and: [requestor isSelected: target]