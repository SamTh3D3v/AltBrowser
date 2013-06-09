execution
execute
	requestor selectedItem rebuildChildren.
	AltBrowser allInstances do: [:i | i rebuildNode: requestor selectedItem]