testing
canRefreshValues
	self needsRefreshItems
		ifFalse: [ ^ false ].
	self owner ifNil: [ ^ false ].
	self owner model ifNil: [ ^ false ].
	^ true