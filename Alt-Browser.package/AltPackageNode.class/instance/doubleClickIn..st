actions
doubleClickIn: anAltTreeItemModel
	"Action!"

	AltBrowserNeo
		fullOnEnvironment: (anAltTreeItemModel rbEnvironment forPackages: {self rpackage})
		select: self
		with: anAltTreeItemModel findExpanded