initialization
initialize
	"Create a representation of self."

	super initialize.
	self
		color: Color transparent;
		layoutPolicy: RowLayout new;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		listDirection: #leftToRight;
		cellPositioning: #leftCenter;
		cellInset: 4 @ 0