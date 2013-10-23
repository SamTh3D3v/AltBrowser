execution
execute
	| aRBEnv |
	aRBEnv := requestor rbEnvironment isSelectorEnvironment
		ifTrue: [ requestor rbEnvironment environment ]
		ifFalse: [ requestor rbEnvironment ].
	(AltBrowser fullOnEnvironment: (RBSelectorEnvironment referencesTo: self node selector in: aRBEnv)) expandAllNodes