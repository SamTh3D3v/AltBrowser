updating
aMethodRecategorized: anEvent
	"Refactoring of that logic. Go through the tree to update the relevant nodes. Rely on the AltBrowser announcer (via the class interface) to signal updates."

	"Architecture: the AltBrowser class listen to the event. It passes it along to the tree of items. Each item get a chance to notice the event and announce an update or a rebuilt. By default, do nothing. Return false if nothing was done."
	
	"The event has:
		methodClass
		methodRecategorized
		newProtocol
		oldProtocol"

	^ false