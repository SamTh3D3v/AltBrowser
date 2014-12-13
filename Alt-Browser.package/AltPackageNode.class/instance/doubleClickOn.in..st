actions
doubleClickOn: anAltTreeNodeModel in: anAltBrowser
	"Action!"

	AltBrowser
		fullOnEnvironment: (anAltBrowser rbEnvironment forPackages: {(self rpackage)})
		select: self
		with: anAltTreeNodeModel findExpanded