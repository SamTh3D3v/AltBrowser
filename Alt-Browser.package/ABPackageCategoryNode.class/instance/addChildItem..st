as yet unclassified
addChildItem: anItem
	"Add a child, but do it according to it's position."

	| d |
	self contents.	"Force contents creation."
	item value add: anItem item.
	anItem parentNode: self.
	^ contents add: anItem