initialization
release
	object ifNotNil: [ object announcer unsubscribe: self ].
	window ifNotNil: [ window announcer unsubscribe: self ].
	treeMorph ifNotNil: [ treeMorph release ].
	super release