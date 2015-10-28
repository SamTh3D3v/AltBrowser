actions
doubleClickIn: anAltTreeItemModel
	"At the moment, a RPackageTag can't be used in an environment. So, when double clicking, open with a focus on the package, not the tag (hence the parent for #findExpanded)"

	AltBrowserNeo
		fullOnEnvironment: (anAltTreeItemModel rbEnvironment forPackages: {self rpackage})
		select: self
		with: anAltTreeItemModel parent findExpanded