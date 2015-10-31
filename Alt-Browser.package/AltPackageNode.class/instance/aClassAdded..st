updating
aClassAdded: anEvent
	"Propagate the event. Note if this belong to our package."

	| result |
	(RPackageOrganizer default
		category: anEvent classCategory
		matches: self packageName)
		ifTrue:
			[ result := self contents
				inject: false
				into: [ :bool :each | (each aClassAdded: anEvent) or: [ bool ] ].
			anEvent classCategory = self packageName
				ifTrue: [ AltBrowser aNodeToRebuilt: self.
					^ true ].
			^ result ].
	^ false