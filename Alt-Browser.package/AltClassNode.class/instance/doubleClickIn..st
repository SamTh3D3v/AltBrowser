actions
doubleClickIn: aTreeItemModel
	"Action!"

	| aRBEnv anAltBrowser |
	anAltBrowser := aTreeItemModel model.
	aRBEnv := anAltBrowser rbEnvironment isSelectorEnvironment
		ifTrue: [ anAltBrowser rbEnvironment environment ]
		ifFalse: [ anAltBrowser rbEnvironment ].
	AltBrowserNeo
		fullOnEnvironment: (aRBEnv forClasses: {self itemClass})
		select: self
		with: aTreeItemModel findExpanded