accessing
rootItems
	rootItems isNil
		ifTrue: [ rootItems := NewValueHolder contents: self getRootItems ].
	^ rootItems