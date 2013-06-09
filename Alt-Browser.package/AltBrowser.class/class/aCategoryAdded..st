updating
aCategoryAdded: anEvent
	"Ok, a class category was added. Search for that category, rebuilt the parent node (should be a package set)."

	"Should not have to be used anymore. A RPackage creation should happen before that."

	self rootItems inject: false into: [ :bool :root | (root aCategoryAdded: anEvent) or: [ bool ] ]