accessing
projectName
	(self categoryName beginsWith: 'ConfigurationOf')
		ifTrue: [ ^ self categoryName allButFirst: 'ConfigurationOf' size ].
	(self categoryName beginsWith: 'BaselineOf')
		ifTrue: [ ^ self categoryName allButFirst: 'BaselineOf' size ]