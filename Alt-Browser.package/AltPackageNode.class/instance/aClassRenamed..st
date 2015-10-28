updating
aClassRenamed: anEvent
	"Pass through that event."

	(self contents anySatisfy: [ :each | each aClassRenamed: anEvent ])
		ifFalse: [ ^ false ].
	AltBrowserNeo aNodeToRebuilt: self.
	^ true