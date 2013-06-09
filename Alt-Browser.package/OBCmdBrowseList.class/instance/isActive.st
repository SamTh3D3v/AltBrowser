command
isActive
	^ (requestor isSelected: target) and: [ target hasSelector ]