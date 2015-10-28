updating
aClassModifiedClassDefinition: anEvent
	"Handle it here."

	anEvent newClassDefinition = self itemClass
		ifFalse: [ ^ false ].
	AltBrowserNeo aNodeToUpdate: self.
	^ true