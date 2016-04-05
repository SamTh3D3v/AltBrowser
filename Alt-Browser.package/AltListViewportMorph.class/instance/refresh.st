updating
refresh
	"model change triggers a refresh."

	"Try to maintain same position from top of the tree when refreshing."

	self owner ifNil: [ ^ self ].
	self setNeedsRefreshItems.
	self clearModelCachedData.
	exposedItems
		ifNotNil: [ :e | 
			self findCurrentVerticalValue
				ifNotNil: [ :c | self owner verticalScrollBar value: c ] ].
	super changed