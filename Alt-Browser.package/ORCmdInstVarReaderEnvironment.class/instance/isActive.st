testing
isActive
	^ super isActive and: [ (target isKindOf: ABClassNode) "or: [ target isKindOf: ABInstanceVariableNode ]" ]