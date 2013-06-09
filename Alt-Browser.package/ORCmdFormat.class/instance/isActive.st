testing
isActive
	^" (target isKindOf: OBTextSelection) or: [ "(target isKindOf: ABMethodNode) "and: [ (target isKindOf: OBMethodVersionNode) not" and: [ requestor isSelected: target ] "] ] "