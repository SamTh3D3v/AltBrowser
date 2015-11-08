menu
showMenuForPosition: aPoint
	"Ok, menu on the model?"

	self
		showMenuForRowIndex: (self viewport rowIndexContainingPoint: aPoint)