updating
aClassCommented: anEvent
	anEvent classCommented == self itemClass
		ifTrue: [ AltBrowserNeo aNodeToUpdate: self.
			^ true ].
	^ false