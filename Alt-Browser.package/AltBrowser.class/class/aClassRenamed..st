updating
aClassRenamed: anEvent
	"Find the class node, and rebuilt the parent? Overall, there is a lack of correct model integration in those structures."

	self rootItems do: [ :e | e aClassRenamed: anEvent ]