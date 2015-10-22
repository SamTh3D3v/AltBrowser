actions
doubleClickIn: anAltTreeItemModel
	"Action!"

	AltBrowser
		fullOnEnvironment:
			(anAltTreeItemModel rbEnvironment forPackages: {self rpackage})
		select: self
		with: anAltTreeItemModel findExpanded