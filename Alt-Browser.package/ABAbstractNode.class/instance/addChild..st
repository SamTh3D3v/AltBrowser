accessing
addChild: anItem
	"Add a child, but do it according to it's position."

	| d newItemNode |
	d := self childrenItems indexOf: anItem.
	contents add: (newItemNode := self childNodeFromItem: anItem) beforeIndex: d.
	^ newItemNode