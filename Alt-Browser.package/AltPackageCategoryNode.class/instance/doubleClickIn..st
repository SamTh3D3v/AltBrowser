actions
doubleClickIn: anAltTreeItemModel
	"Action! On all packages listed under that category."

	| aSetOfPackages |
	aSetOfPackages := IdentitySet new.
	self packagesDo: [ :e | aSetOfPackages add: e ].
	AltBrowserNeo
		fullOnEnvironment: (anAltTreeItemModel rbEnvironment forPackages: aSetOfPackages)
		select: self
		with: anAltTreeItemModel findExpanded