updating
aMethodRemoved: anEvent
	"When a method is removed, we may disappear."

	((anEvent methodClass == self parent itemClass
		or: [ anEvent methodClass == self parent itemClass classSide ])
		and: [ anEvent protocol = self methodCategory ])
		ifTrue:
			[ (anEvent methodClass organization
				protocolNamed: self methodCategory) isEmpty
				ifTrue: [ AltBrowser aNodeToRebuilt: self parent.
					^ true ] ].
	^ false