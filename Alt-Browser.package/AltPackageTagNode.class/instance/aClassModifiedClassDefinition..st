updating
aClassModifiedClassDefinition: anEvent
	"Pass through that event."

	(self contents
		anySatisfy: [ :each | each aClassModifiedClassDefinition: anEvent ])
		ifFalse: [ ^ false ].
	AltBrowser aNodeToRebuilt: self.
	^ true