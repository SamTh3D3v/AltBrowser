drag and drop
acceptDropItem: anItem
	"Ok. If we receive a category or a package we either add it to its
	children (if it has no children ?) or add it just before this item?"

	^ (anItem isKindOf: AltPackageCategoryNode) or: [ anItem isKindOf: AltRPackageNode ]