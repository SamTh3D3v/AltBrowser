menu
showMenuForPosition: aPoint
	"Ok, menu on the model?"

	self
		showMenuForRowIndex: (self container rowIndexContainingPoint: aPoint)