updating
aRPackageUnregistered: anEvent
	"We may be unregistered and need to erase ourselves."

	^ self item packageName = anEvent package name