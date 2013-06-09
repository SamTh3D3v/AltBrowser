updating
aClassRepackaged: anEvent
	"Ok, a class was repackaged. Update old and new package."

	self rootItems do: [ :e | e aClassRepackaged: anEvent ]