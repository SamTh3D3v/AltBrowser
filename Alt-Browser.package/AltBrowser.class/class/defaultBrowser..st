settings
defaultBrowser: aBoolean
	aBoolean
		ifTrue: [ self registerInAppRegistry ]
		ifFalse: [ 
			PackageTreeNautilus registerToolsOn: Smalltalk tools.
			MessageBrowser registerToolsOn: Smalltalk tools ]