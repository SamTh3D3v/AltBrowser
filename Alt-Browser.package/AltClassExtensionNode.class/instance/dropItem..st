drag and drop
dropItem: anItem
	"Used to move methods from a package to another, or from a normal category to an extension-labeled one."

	| cm |
	cm := anItem compiledMethod.
	cm sourceClass organization classify: anItem selector under: self methodCategory suppressIfDefault: false