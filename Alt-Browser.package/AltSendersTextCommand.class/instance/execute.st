execution
execute
	| aRBEnv |
	aRBEnv := requestor rbEnvironment isSelectorEnvironment
		ifTrue: [ requestor rbEnvironment environment ]
		ifFalse: [ requestor rbEnvironment ].
	(AltBrowser fullOnEnvironment: (RBSelectorEnvironment referencesTo: requestor selectedNode item item in: aRBEnv))
		expandAllNodes