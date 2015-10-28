private
resizeAllSubviews
	"Order of each instruction is very significant."

	self resizeVerticalScrollBar.
	self resizeHorizontalScrollBar.
	self resizeContainer.
	self recalculateVerticalScrollBar.
	self recalculateHorizontalScrollBar