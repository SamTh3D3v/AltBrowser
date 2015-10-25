updating
aClassCommented: anEvent
	anEvent classCommented == self itemClass
		ifTrue:
			[ AltBrowser aNodeToUpdate: self.
			AltBrowserNeo aNodeToUpdate: self.
			^ true ].
	^ false