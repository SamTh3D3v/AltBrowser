accessing
addChildItem: anItem
	"This implementation tries to handle contents as a cache."

	| d |
	anItem parentNode: self.
	self childrenItems isEmpty
		ifTrue: [ ^ self contents add: anItem ].
	d := self childrenItems indexOf: anItem item.
	^ contents add: anItem beforeIndex: d