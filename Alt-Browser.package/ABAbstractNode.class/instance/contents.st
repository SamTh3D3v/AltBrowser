accessing
contents
	contents isNil
		ifTrue: [ contents := super contents ].
	^ contents