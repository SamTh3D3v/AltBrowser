accessing
projectName
	^ (self categoryName copyWithoutAll: 'ConfigurationOf')
		copyWithoutAll: 'BaselineOf'