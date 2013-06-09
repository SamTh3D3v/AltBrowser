updating
aMCWorkingCopyModified: anEvent
	"Just return true if this is us."

	"Note. this will be called twice on the node if the answer is true. Don't forget that if some resource release is done here."

	anEvent workingCopy == item
		ifTrue: [ 
			AltBrowser aNodeToUpdate: self.
			^ true ].
	^ false