actions
doubleClickOn: aMorphTreeNodeMorph in: anAltBrowser
	"Action! On all packages listed under that category."

	| aSetOfPackages |
	aSetOfPackages := IdentitySet new.
	self packagesDo: [ :e | aSetOfPackages add: e ].
	AltBrowser
		fullOnEnvironment:
			(anAltBrowser rbEnvironment forPackages: aSetOfPackages)
		select: self
		with: aMorphTreeNodeMorph findExpanded