accessing
rootItems
	RootItems isNil
		ifTrue: [ RootItems := self getRootItems ].
	^ RootItems