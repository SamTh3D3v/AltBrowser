as yet unclassified
isEnabled
	^ requestor selectedItem isNil or: [ requestor selectedItem item isKindOf: ABPackageCategoryNode ]