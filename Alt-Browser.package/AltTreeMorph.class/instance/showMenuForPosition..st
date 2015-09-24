menu
showMenuForPosition: aPoint
	"TODO: completely wrong for us."

	| tuple |
	tuple := self container rowAndColumnIndexContainingPoint: aPoint.
	self showMenuForRowIndex: tuple first columnIndex: tuple second