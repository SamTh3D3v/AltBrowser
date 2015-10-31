updating
aClassCommented: anEvent
	anEvent classCommented == self itemClass
		ifTrue: [ AltBrowser aNodeToUpdate: self.
			^ true ].
	^ false