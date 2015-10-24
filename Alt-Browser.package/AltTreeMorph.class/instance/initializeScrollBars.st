initialization
initializeScrollBars
	"Add a vertical scrollbar. An horizontal one is also needed, often."

	verticalScrollBar := AltScrollBar new
		model: self;
		setValueSelector: #verticalScrollBarValue:;
		yourself.
	horizontalScrollBar := ScrollBar new
		model: self;
		setValueSelector: #horizontalScrollBarValue:;
		yourself