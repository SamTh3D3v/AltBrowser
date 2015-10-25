updating
aClassRenamed: anEvent
	"Pass through that event."

	(self contents anySatisfy: [ :each | each aClassRenamed: anEvent ])
		ifFalse: [ ^ false ].
	AltBrowser aNodeToRebuilt: self.
	AltBrowserNeo aNodeToRebuilt: self.
	^ true