updating
aClassReorganized: anEvent
	"Note if the reorganized class belong to us. If this is true, update ourselves."

	(self contents
		inject: false
		into: [ :bool :each | (each aClassReorganized: anEvent) or: [ bool ] ])
		ifTrue: [ AltBrowser aNodeToRebuilt: self.
			^ true ].
	^ false