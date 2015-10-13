updating
updateItems
	"Note that accessing items by direct index may be slow (tree), ask them by sequence."

	"API: model: #size #copyFrom:to:"

	"Note that I have an endless /instability here because I may trigger a
	horizontal scroll bar here with a row which is finally hidden by that
	very same scroll bar (which cause it to disappear)."

	"Second note. It seems I'm going through there twice.
	- Once here.
		- Need for scrollbar
		- add scrollbar -> force a refresh
		- refresh shows no need for scrollbar :(
	- Not sure I'll find a solution to this bug."

	| visibleRows startIndex lastIndex visibleItems |
	self canRefreshValues
		ifFalse: [ ^ false ].
	visibleRows := self calculateMaxVisibleRows.
	startIndex := self calculateStartIndexWhenShowing: visibleRows.
	exposedItems := SmallDictionary new.
	offsetWidth := self width.
	lastIndex := startIndex + visibleRows - 1 min: self owner model size.
	visibleItems := self owner model copyFrom: startIndex to: lastIndex.
	(startIndex to: lastIndex)
		with: visibleItems
		do:
			[ :index :item | 
			| morph row |
			morph := item asTreeItemMorph privateOwner: self.
			offsetWidth := offsetWidth max: morph right + 2.
			row := Morph new
				hResizing: #rigid;
				vResizing: #rigid;
				color: Color transparent;
				bounds: (0 @ 0 extent: (self width - 2) @ morph bottom);
				yourself.
			row addMorph: morph.
			exposedItems at: index put: row ].
	exposedItems values do: [ :each | each right: offsetWidth - 1 ].
	self owner
		recalculateHorizontalScrollBar;
		recalculateVerticalScrollBar.
	^ true