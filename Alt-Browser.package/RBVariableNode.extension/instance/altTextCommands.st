*alt-browser
altTextCommands
	"Answer commands depending on the binding "

	self binding isInstance
		ifTrue:
			[ ^ #(#AltInstVarDefs #AltInstVarRefs #AltRBInstVarRenameCommand #AltRBInstVarAccessorCommand #AltRBInstVarPushDownCommand #AltRBInstVarPullUpCommand #AltRBRemoveInstanceVariableCommand) ].
	self binding isTemp
		ifTrue: [ ^ #(#AltRBTemporaryRenameCommand) ].
	(self binding isLiteral or: [ self isGlobal ])
		ifTrue:
			[ self binding isClassVariable
				ifTrue: [ ^ #(#AltRBRemoveClassVariableCommand) ]
				ifFalse: [ ^ #(#AltBrowseTextCommand) ] ].
	^ #()