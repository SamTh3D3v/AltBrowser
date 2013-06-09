accessing
removeChildItem: anItem
	"Remove a child item. Some subclasses may do things with the item, or translate this into an operation."

	self contents remove: anItem