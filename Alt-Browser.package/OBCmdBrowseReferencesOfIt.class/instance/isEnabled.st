testing
isEnabled
	^ self globalReference notNil or: [ self localReference notNil ]