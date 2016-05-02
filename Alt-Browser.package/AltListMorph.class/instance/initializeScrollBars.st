initialization
initializeScrollBars
	"Add both a vertical scrollbar and an horizontal scrollbar."

	verticalScrollBar := ScrollBar new
		model: self;
		setValueSelector: #verticalScrollBarValue:;
		yourself.
	horizontalScrollBar := ScrollBar new
		model: self;
		setValueSelector: #horizontalScrollBarValue:;
		yourself