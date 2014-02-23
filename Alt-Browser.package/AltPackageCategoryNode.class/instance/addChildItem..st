accessing
addChildItem: anItem
	"In this type of node, add the item to the value."

	item value add: anItem item.
	anItem parentNode: self.
	^ super addChildItem: anItem