accessing
environment
	^ environment
		ifNil: [ environment := RBBrowserEnvironment new ]