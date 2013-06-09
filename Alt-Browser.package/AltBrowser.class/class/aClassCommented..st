updating
aClassCommented: anEvent
	"Find the comment node and refresh it (or the class node, should be good enough)."

	"Refreshing the class node is bad, because then the comment node is recreated and the accept routine looses the focus."

	self rootItems do: [ :e | e aClassCommented: anEvent ]