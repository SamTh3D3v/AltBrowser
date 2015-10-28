updating
aClassReorganized: anEvent
	"Ok, if we are the class, reorganize (of course). If we are the class of the class, we also need to reorganize. Beware: we suppose the class side is the first item."

	anEvent classReorganized == self itemClass
		ifTrue: [ AltBrowserNeo aNodeToRebuilt: self.
			^ true ].
	anEvent classReorganized == self itemClass class
		ifTrue: [ AltBrowserNeo aNodeToRebuilt: self contents first.
			^ true ].
	^ false