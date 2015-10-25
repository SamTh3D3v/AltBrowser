updating
aClassModifiedClassDefinition: anEvent
	"Handle it here."

	anEvent newClassDefinition = self itemClass
		ifFalse: [ ^ false ].
	indent := nil.
	AltBrowser aNodeToUpdate: self.
	AltBrowserNeo aNodeToUpdate: self.
	self contents first aClassModifiedClassDefinition: anEvent.
	^ true