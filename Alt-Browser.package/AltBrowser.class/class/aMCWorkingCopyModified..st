updating
aMCWorkingCopyModified: anEvent
	"Ok, should force a change in look for the relevant object in the trees."

	self rootItems do: [ :e | e aMCWorkingCopyModified: anEvent ]