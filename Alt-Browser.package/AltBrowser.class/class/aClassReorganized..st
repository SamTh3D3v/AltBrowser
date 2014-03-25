updating
aClassReorganized: anEvent
	"Ok, a class was reorganised (a new protocol, for example). It seems I need to rebuilt all nodes on that class. It's not so simple than calling the new rebuilt; we also need to remove the old items or add new ones."

	"Refactor. Moves logic into each node."

	self root aClassReorganized: anEvent