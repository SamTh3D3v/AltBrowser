accessing
addChild: anItem
	"Add a child, but do it according to it's position."

	| d |
	item value add: anItem.
	d := self childrenItems indexOf: anItem.
	contents isNil ifTrue: [^nil] ifFalse: [
	^ contents add: (self childNodeFromItem: anItem) beforeIndex: d]