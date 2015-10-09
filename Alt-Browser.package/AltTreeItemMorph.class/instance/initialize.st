initialization
initialize
	"Create a representation of self."

	super initialize.
	self
		color: Color transparent;
		layoutPolicy: TableLayout new;
		layoutInset: 1;
		wrapCentering: #center;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		listDirection: #leftToRight;
		cellPositioning: #leftCenter