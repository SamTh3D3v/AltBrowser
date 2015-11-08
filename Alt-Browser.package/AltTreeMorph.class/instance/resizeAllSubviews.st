private
resizeAllSubviews
	"Order of each instruction is very significant."

	self resizeVerticalScrollBar.
	self resizeHorizontalScrollBar.
	self resizeViewport.
	self recalculateVerticalScrollBar.
	self recalculateHorizontalScrollBar