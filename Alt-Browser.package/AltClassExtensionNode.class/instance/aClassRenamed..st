updating
aClassRenamed: anEvent
	anEvent oldName == self item
		ifFalse: [ ^ false ].
	self item: anEvent newName.
	AltBrowser aNodeToUpdate: self.
	self contents first aClassRenamed: anEvent.	"In case we have a meta node."
	^ true