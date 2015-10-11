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
			| morph row |
			morph := item asTreeItemMorph privateOwner: self.
			row := Morph new
				hResizing: #rigid;
				vResizing: #rigid;
				color: Color transparent;
				bounds:
					(0 @ 0 extent: (self width max: morph right) @ morph height);
				yourself.
			row addMorph: morph.
			exposedItems at: index put: row ].
	^ true