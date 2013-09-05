accessing
rbEnvironment
	^ rbEnvironment
		ifNil: [ rbEnvironment := RBBrowserEnvironment new ]