updating
aClassReorganized: anEvent
	"Ok, if we are the class, reorganize (of course). If we are the class of the class, we also need to reorganize. Beware: we suppose the class side is the first item."

	anEvent classReorganized == item
		ifTrue: [ 
			AltBrowser aNodeToRebuilt: self.
			^ true ].
	anEvent classReorganized == item class
		ifTrue: [ 
			self assert: self contents first item == item class.
			AltBrowser aNodeToRebuilt: self contents first.
			^ true ].
	^ false