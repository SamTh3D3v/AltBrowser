updating
aCategoryRenamed: anEvent
	"A system category was renamed. This means a RPackageTag will have been renamed."

	self rootItems inject: false into: [ :bool :root | (root aCategoryRenamed: anEvent) or: [ bool ] ]