updating
aClassReorganized: anEvent
	"Ok, if we are the class, reorganize (of course)."

	anEvent classReorganized == item
		ifTrue: [ 
			AltBrowser aNodeToRebuilt: self.
			^ true ].
	^ false