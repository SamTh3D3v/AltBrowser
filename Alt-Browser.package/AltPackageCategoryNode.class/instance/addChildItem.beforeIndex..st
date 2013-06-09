accessing
addChildItem: anItem beforeIndex: anIndex
	"Add a child, but do it according to it's position."

	| d |
	self contents.	"Force contents creation."
	item value add: anItem item beforeIndex: anIndex.
	anItem parentNode: self.
	^ contents add: anItem beforeIndex: anIndex