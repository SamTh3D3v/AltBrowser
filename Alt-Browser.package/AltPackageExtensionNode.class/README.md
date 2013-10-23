An ABPackageExtensionNode is for the extensions part of a package.

As per RPackage, extensions also means overrides for packages who have that. No particular care is taken of overrides.

Refactoring: this class behavior should be pushed in the superclass and erased; the superclass isn't used anymore.