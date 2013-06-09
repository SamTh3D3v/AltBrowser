testing
isActive
	^ super isActive and: [ requestor selectedNode isKindOf: ABMethodCategoryNode ]