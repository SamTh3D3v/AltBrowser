accessing
addChildItem: anItem
	"Add a child item."

	| d |
	self childrenItems isEmpty ifTrue: [self contents add: anItem].
	d := self childrenItems indexOf: anItem.
	^ contents add: anItem beforeIndex: d