selection
selectedObject
	^ object selectedItem
		ifNotNil: [ :anItemModel | anItemModel item value ]