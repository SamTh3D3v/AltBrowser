*alt-browser
rebuildChildren
	"Force a rebuild of the childrens. May be triggered by going from no children to has children."

	self recursiveRefreshExpandedState.
	container adjustSubmorphPositions