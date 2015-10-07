testing
canRefreshValues
	self needsRefreshExposedItems
		ifFalse: [ ^ false ].
	self owner ifNil: [ ^ false ].
	self owner model ifNil: [ ^ false ].
	^ true