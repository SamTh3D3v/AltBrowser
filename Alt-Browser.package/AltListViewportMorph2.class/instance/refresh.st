accessing
refresh
	"model change triggers a refresh."

	"Try to maintain same position from top of the tree when refreshing."

	| oldModelSize |
	self owner ifNil: [ ^ self ].
	oldModelSize := self modelSize.
	self clearModelCachedData.
	self updateItems.
	self owner
		resizeVerticalScrollBar;
		resizeHorizontalScrollBar;
		recalculateHorizontalScrollBar;
		recalculateVerticalScrollBar.
	self owner verticalScrollBar
		value: self verticalValue * (oldModelSize / self modelSize).
	super changed