*Alt-Browser-Commands-Refactoring
altTextCommands
	"Answer commands depending on the binding "

	self binding isInstance
		ifTrue: [ 
			^ {AltInstVarDefs.
			AltInstVarRefs.
			AltRBInstVarRenameCommand.
			AltRBInstVarAccessorCommand} ].
	self binding isTemp
		ifTrue: [ ^ {AltRBTemporaryRenameCommand} ].
	self binding isLiteral
		ifTrue: [ ^ {AltBrowseTextCommand} ].
	^ #()