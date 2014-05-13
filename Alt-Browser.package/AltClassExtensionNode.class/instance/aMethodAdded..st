updating
aMethodAdded: anEvent
	"Are we concerned by that event ? Yes if we are the right class and the right method category."

	((anEvent methodClass == self itemClass or: [ anEvent methodClass == self itemClass classSide ])
		and: [ anEvent protocol asLowercase beginsWith: self methodCategory ])
		ifTrue: [ 
			(self contents first isKindOf: AltClassMetaExtensionNode)
				ifTrue: [ self contents first aMethodAdded: anEvent ].
			AltBrowser aNodeToRebuilt: self.
			^ true ].
	^ false