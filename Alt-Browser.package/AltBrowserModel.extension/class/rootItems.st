accessing
rootItems
	rootItems isNil
		ifTrue: [ rootItems := self getRootItems ].
	^ rootItems