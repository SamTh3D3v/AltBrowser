updating
aClassRenamed: anEvent
	anEvent oldName == self item
		ifFalse: [ ^ false ].
	self item: anEvent newName.
	AltBrowser aNodeToUpdate: self.
	^ true