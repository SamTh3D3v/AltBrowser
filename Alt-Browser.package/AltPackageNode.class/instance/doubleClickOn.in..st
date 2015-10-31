actions
doubleClickOn: aMorphTreeNodeMorph in: anAltBrowser
	"Action!"

	AltBrowser
		fullOnEnvironment: (anAltBrowser rbEnvironment forPackages: {self rpackage})
		select: self
		with: aMorphTreeNodeMorph findExpanded