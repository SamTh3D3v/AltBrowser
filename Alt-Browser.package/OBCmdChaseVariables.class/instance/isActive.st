testing
isActive
	^ ((target isKindOf: ABClassNode) or: [(target respondsTo: #theClass) and: [target theClass notNil]])
		and: [requestor isSelected: target]