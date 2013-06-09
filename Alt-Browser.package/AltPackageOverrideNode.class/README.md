This node represent the overrides of a package. It appears only if the package has overrides.

Doc:
- We don't have a way to get the official name of an override, not like an extension is. What we will do is consider that this is the extension category prefix followed by the override postfix.
- Methods
	RPackage>>#isOverrideCategory:
		check if postfix is -override
	RPackage>>#overrideCategoriesForClass:do:
		goes through all the overrides of a Class, not only the ones related to that package.
	RPackage>>#methodCategoryPrefix
		gives the category prefix for that package, combine with -override.

Confirmed: in MCMethodDefinition, we have :
isOverrideMethod
	^ self isExtensionMethod and: [category endsWith: '-override']
	
Algorithm: overrides will only happens if the method is effectively listed as belonging to another package...

What about the distinction between an override and moving methods from one package to another?