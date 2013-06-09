accessing
addChildItem: anItem
	"Add a child item. Remember to effectively add both at the item level if necessary and at the contents level."

	| d |
	self childrenItems isEmpty ifTrue: [^self contents add: anItem].
	d := self childrenItems indexOf: anItem item.
	^ contents add: anItem beforeIndex: d