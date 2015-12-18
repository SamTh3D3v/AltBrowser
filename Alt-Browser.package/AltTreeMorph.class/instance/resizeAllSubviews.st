private
resizeAllSubviews
	"Order of each instruction is very significant."

	"Bug: if removing the horizontal scrollbar makes the vertical scrollbar unnecessary, then the order is wrong."

	"If not carefull, one can trigger an infinite loop with that."

	self resizeVerticalScrollBar.
	self resizeHorizontalScrollBar.
	self resizeViewport.
	self recalculateVerticalScrollBar.
	self recalculateHorizontalScrollBar