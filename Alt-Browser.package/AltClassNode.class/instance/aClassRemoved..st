updating
aClassRemoved: anEvent
	"Note: Just say if we match. Don't bother with the class side, see extension for how it is handled."

	^ anEvent classRemoved == self itemClass