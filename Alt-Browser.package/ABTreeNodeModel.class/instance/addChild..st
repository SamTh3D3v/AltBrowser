accessing
addChild: anItem
	"Add a child, but do it according to it's position."

	| d |
	d := self childrenItems indexOf: anItem.
	^ contents add: (self childNodeFromItem: anItem) beforeIndex: d