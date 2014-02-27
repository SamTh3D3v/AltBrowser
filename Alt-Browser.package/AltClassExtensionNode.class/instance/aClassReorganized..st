updating
aClassReorganized: anEvent
	"Ok, here a reorganize may mean our extension has disappeared. Just ask the top level to update just in case."

	^ anEvent classReorganized == code