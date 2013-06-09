updating
aMethodRecategorized: anEvent
	"Ok, a method protocol has changed. Don't forget the method may be in multiple places (extensions) but this may be handled by other announcements."

	"TOCHECK: if a protocol is removed or added because of this event, suppose that the system will send a ClassReorganized event as well."

	"TODO: if this moves the method into the extensions of a package, it isn't seen. Maybe we need to switch the logic to the nodes of the tree and not the top level class to handle multiple targets to update."

	self rootItems do: [ :root | root aMethodRecategorized: anEvent ]