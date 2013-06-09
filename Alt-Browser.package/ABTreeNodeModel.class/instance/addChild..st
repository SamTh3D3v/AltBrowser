accessing
addChild: anItem
	"Add a child, but do it according to it's position."

	| d newNode |
	d := self childrenItems indexOf: anItem.
	d < 1 ifTrue: [^ self].
	contents add: (newNode := self childNodeFromItem: anItem) beforeIndex: d.
	^ newNode