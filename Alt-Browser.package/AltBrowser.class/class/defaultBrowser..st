settings
defaultBrowser: aBoolean
	(SystemBrowser defaultOrNil isNil and: [ aBoolean ])
		ifTrue: [ SystemBrowser default: self ]