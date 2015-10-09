updating
updateItems
	"Note that accessing items by direct index may be slow (tree), ask them by sequence."

	"API: model: #size #copyFrom:to:"

	| visibleRows startIndex lastIndex visibleItems |
	self canRefreshValues
		ifFalse: [ ^ false ].
	visibleRows := self calculateMaxVisibleRows.
	startIndex := self calculateStartIndexWhenShowing: visibleRows.
	exposedItems := SmallDictionary new.
	lastIndex := startIndex + visibleRows - 1 min: self owner model size.
	visibleItems := self owner model copyFrom: startIndex to: lastIndex.
	(startIndex to: lastIndex)
		with: visibleItems
		do:
			[ :index :item | 
			| morph |
			morph := item asTreeItemMorph privateOwner: self.
			exposedItems at: index put: morph ].
	^ true