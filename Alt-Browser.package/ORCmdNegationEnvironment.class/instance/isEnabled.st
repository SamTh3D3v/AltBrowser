testing
isEnabled
	^ super isEnabled and: [ super environment isSystem not ]