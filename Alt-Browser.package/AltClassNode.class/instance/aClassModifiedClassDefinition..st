updating
aClassModifiedClassDefinition: anEvent
	"Handle it here."

	anEvent newClassDefinition = self itemClass
		ifFalse: [ ^ false ].
	indent := nil.
	AltBrowserNeo aNodeToUpdate: self.
	self contents first aClassModifiedClassDefinition: anEvent.
	^ true