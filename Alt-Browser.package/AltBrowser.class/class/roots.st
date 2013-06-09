accessing
roots
	rootItems isNil
		ifTrue: [ rootItems := self getRootItems ].
	^ rootItems