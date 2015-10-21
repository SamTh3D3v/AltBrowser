actions
doubleClickIn: anAltTreeItemModel
	"Action! On all packages listed under that category."

	| aSetOfPackages aRBEnv anAltBrowser |
	aSetOfPackages := IdentitySet new.
	self packagesDo: [ :e | aSetOfPackages add: e ].
	anAltBrowser := anAltTreeItemModel model.
	aRBEnv := anAltBrowser rbEnvironment isSelectorEnvironment
		ifTrue: [ anAltBrowser rbEnvironment environment ]
		ifFalse: [ anAltBrowser rbEnvironment ].
	AltBrowser
		fullOnEnvironment:
			(anAltBrowser rbEnvironment forPackages: aSetOfPackages)
		select: self
		with: anAltTreeItemModel findExpanded