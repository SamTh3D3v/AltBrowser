updating
aClassCommented: anEvent
	anEvent classCommented == code
		ifTrue: [ 
			AltBrowser aNodeToUpdate: self.
			^ true ].
	^ false