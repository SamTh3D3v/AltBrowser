settings
defaultInspector: aBoolean
	aBoolean
		ifTrue: [ Smalltalk tools register: self as: #inspector ]
		ifFalse: [ EyeInspector registerToolsOn: Smalltalk tools ]