updating
aRPackageUnregistered: anEvent
	"Try to notice that RPackage may be unregistered... i.e. removed from the system.
	For now, the system category still exists, but update the tree accordingly."

	"Ouch, in the event, we keep track of the same event when renaming it, so, if this code is run a bit late, then this will be all wrong because the package in the event will already have the new name instead. It's a very nice bug : looking at the event history does not allow one to replay or understand it, because vital past information is lost."

	self rootItems do: [ :e | e aRPackageUnregistered: anEvent ]