private
moveVisibleIndexTo: aNumber
	"I ensure that this item number is visible, and perform a refresh of subviews. 
	 Use me just in case you need to force a refresh after setting the index"

	self verticalScrollBar
		value: (self viewport verticalValueForIndex: aNumber).
	self viewport changed