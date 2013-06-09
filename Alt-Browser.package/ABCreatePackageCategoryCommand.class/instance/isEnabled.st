testing
isEnabled
	^ requestor selectedItem isNil or: [ requestor selectedItem item isKindOf: ABPackageCategoryNode ]