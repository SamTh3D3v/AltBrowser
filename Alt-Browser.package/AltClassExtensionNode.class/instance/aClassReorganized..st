updating
aClassReorganized: anEvent
	"Ok, here a reorganize may mean our extension has disappeared. Just ask the top level to update just in case."

	anEvent classReorganized == self itemClass
		ifTrue: [ ^ true ].
	anEvent classReorganized == self itemClass classSide
		ifTrue: [ AltBrowser aNodeToRebuilt: self.
			^ true ].
	^ false