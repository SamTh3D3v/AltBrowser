accessing
contents
	contents isNil
		ifTrue: [ contents := self childrenItems collect: [ :i | self childNodeFromItem: i ] ].
	^ contents