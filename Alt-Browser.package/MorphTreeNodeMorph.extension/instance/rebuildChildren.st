*alt-browser
rebuildChildren
	"Force a rebuild of the childrens. May be triggered by going from no children to has children."

	container ifNil: [ ^ self ].
	complexContents ifNil: [ ^ self ].
	self recursiveRefreshExpandedState.
	container adjustSubmorphPositions