execution
execute
	| aRBEnv |
	aRBEnv := requestor rbEnvironment isSelectorEnvironment
		ifTrue: [ requestor rbEnvironment environment ]
		ifFalse: [ requestor rbEnvironment ].
	(AltBrowser fullOnEnvironment: (aRBEnv implementorsOf: self node selector)) expandAllNodes