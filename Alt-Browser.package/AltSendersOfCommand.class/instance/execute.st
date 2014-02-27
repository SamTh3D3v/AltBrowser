execution
execute
	"Execute an all senders of."

	| aRBEnv |
	aRBEnv := requestor rbEnvironment isSelectorEnvironment
		ifTrue: [ requestor rbEnvironment environment ]
		ifFalse: [ requestor rbEnvironment ].
	(AltBrowser fullOnEnvironment: (RBSelectorEnvironment referencesTo: requestor selectedNode item selector in: aRBEnv))
		expandAllNodes