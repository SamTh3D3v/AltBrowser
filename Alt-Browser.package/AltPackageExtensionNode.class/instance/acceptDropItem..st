drag and drop
acceptDropItem: anItem
	"Used to move methods from a package to another, or from a normal category to an extension-labeled one."

	^ anItem isKindOf: AltMethodNode