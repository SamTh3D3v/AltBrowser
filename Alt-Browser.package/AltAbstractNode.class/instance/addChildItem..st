accessing
addChildItem: aNode
	"This implementation tries to handle contents as a cache."

	| d |
	aNode parentNode: self.
	self childrenItems isEmpty
		ifTrue: [ ^ self contents add: aNode ].
	d := self childrenItems indexOf: aNode item.
	^ contents add: aNode beforeIndex: d