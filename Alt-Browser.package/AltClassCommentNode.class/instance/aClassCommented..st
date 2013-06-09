updating
aClassCommented: anEvent
	anEvent classCommented == item
		ifTrue: [ 
			AltBrowser aNodeToUpdate: self.
			^ true ].
	^ false