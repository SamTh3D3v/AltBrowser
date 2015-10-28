actions
doubleClickOn: aMorphTreeNodeMorph in: anAltBrowser
	"Action!"

	| aRBEnv |
	aRBEnv := anAltBrowser rbEnvironment isSelectorEnvironment
		ifTrue: [ anAltBrowser rbEnvironment environment ]
		ifFalse: [ anAltBrowser rbEnvironment ].
	AltBrowserNeo
		fullOnEnvironment: (aRBEnv forClasses: {self itemClass})
		select: self
		with: aMorphTreeNodeMorph findExpanded