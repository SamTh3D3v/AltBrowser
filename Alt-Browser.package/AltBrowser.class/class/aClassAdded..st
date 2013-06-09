updating
aClassAdded: anEvent
	"Ok, a class was added. Find the package it belongs to (or none)."

	self rootItems do: [ :e | e aClassAdded: anEvent ]