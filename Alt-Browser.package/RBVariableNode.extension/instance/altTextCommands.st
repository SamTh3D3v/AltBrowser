*alt-browser
altTextCommands
	"Answer commands depending on the binding "

	self binding isInstance
		ifTrue: [ 
			^ {AltInstVarDefs.
			AltInstVarRefs.
			AltRBInstVarRenameCommand} ].
	self binding isTemp
		ifTrue: [ ^ {AltRBTemporaryRenameCommand} ].
	^ #()