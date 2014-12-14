actions
doubleClickOn: aMorphTreeNodeMorph in: anAltBrowser
	"Action!"

	"At the moment, a RPackageTag can't be used in an environment. So, when double clicking, open with a focus on the package, not the tag."

	AltBrowser
		fullOnEnvironment: (anAltBrowser rbEnvironment forPackages: {(self rpackage)})
		select: self
		with: aMorphTreeNodeMorph parentNode findExpanded