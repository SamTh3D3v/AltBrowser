settings
defaultBrowser: aBoolean
	aBoolean
		ifTrue: [ self registerInAppRegistry ]
		ifFalse: [ 
			Nautilus registerToolsOn: Smalltalk tools.
			MessageBrowser registerToolsOn: Smalltalk tools ]