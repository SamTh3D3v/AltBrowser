updating
aClassRemoved: anEvent
	"Ok, a class was removed. If this class has extensions, it should be removed from more than one place."

	self rootItems do: [ :e | e aClassRemoved: anEvent ]