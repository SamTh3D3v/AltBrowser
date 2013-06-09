testing
isEnabled
	^ super isEnabled and: [ self environment isSystem not ]