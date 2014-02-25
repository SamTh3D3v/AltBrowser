actions
doubleClickOn: anAltTreeNodeModel in: anAltBrowser
	"Action!"
	
	"At the moment, a RPackageTag can't be used in an environment. So, when double clicking, open with a focus on the package, not the tag."

	AltBrowser fullOnPackage: self rpackage in: anAltBrowser rbEnvironment