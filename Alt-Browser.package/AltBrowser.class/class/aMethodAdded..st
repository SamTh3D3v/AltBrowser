updating
aMethodAdded: anEvent
	"Ok, a method was added."

	"Problem : if there isn't any method yet, then the current method category will be replaced by the 'as yet unclassified' category, and the update won't work as expected."

	self rootItems do: [ :root | root aMethodAdded: anEvent ]