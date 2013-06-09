testing
isActive
	^ super isActive and: [ (target isKindOf: ABClassCategoryNode)" or: [ target isKindOf: OBEnvironmentNode ]" ]