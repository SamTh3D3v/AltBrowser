updating
aNodeToRebuilt: r
	r rebuildContents.
	announcer announce: (AltNodeRebuilt node: r)