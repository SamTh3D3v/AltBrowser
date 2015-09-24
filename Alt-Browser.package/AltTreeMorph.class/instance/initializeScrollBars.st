initialization
initializeScrollBars
	"Scrollbars are things I'd like to change."

	verticalScrollBar := ScrollBar new
		model: self;
		setValueSelector: #verticalScrollBarValue:;
		yourself.
	self addMorph: verticalScrollBar