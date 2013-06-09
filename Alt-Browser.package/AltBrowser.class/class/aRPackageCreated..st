updating
aRPackageCreated: anEvent
	"Tracing RPackage creation. There should be a package set containing it."

	self rootItems do: [ :each | each aRPackageCreated: anEvent ]