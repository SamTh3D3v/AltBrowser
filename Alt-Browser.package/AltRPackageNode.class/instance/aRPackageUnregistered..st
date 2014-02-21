updating
aRPackageUnregistered: anEvent
	"We may be unregistered and need to erase ourselves."

	^ self packageName = anEvent package packageName