actions
doubleClickOn: aMorphTreeNodeMorph in: anAltBrowser
	"Action!"

	AltBrowserNeo
		fullOnEnvironment: (anAltBrowser rbEnvironment forPackages: {self rpackage})
		select: self
		with: aMorphTreeNodeMorph findExpanded