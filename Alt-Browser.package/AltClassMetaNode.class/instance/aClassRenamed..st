updating
aClassRenamed: anEvent
	anEvent oldName == self item
		ifFalse: [ ^ false ].
	self item: anEvent newName.
	AltBrowserNeo aNodeToUpdate: self.
	^ true