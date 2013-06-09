updating
aMethodRemoved: anEvent
	"Ok, a method was removed. Don't forget the method may be in multiple places."

	"Change this code; search for places where the method is visible (extensions and protocols)."

	"Bug: when removing a method, the method having already been removed from the system makes the search for the parent fail... :palm:"

	self rootItems do: [ :root | root aMethodRemoved: anEvent ]