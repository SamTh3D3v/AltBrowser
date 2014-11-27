updating
aClassModifiedClassDefinition: anEvent
	"Handle it here."

	anEvent newClassDefinition = self itemClass
		ifFalse: [ ^ false ].
	AltBrowser aNodeToUpdate: self.
	^ true