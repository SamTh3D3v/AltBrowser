testing
isEnabled
	^ requestor selectedNode isNil or: [ requestor selectedNode item isPackageCategoryNode ]