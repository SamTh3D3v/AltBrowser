actions
doubleClickOn: anAltTreeNodeModel in: anAltBrowser
	"Action!"

	| aRBEnv |
	aRBEnv := anAltBrowser rbEnvironment isSelectorEnvironment
		ifTrue: [ anAltBrowser rbEnvironment environment ]
		ifFalse: [ anAltBrowser rbEnvironment ].
	AltBrowser fullOnClass: self item in: aRBEnv