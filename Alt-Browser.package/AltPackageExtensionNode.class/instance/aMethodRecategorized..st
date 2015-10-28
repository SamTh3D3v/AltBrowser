updating
aMethodRecategorized: anEvent
	"Check that we are the right protocol. Don't forget that the underlying class extension could need a rebuilt as well."

	((anEvent newProtocol asLowercase beginsWith: self methodCategory)
		or: [ anEvent oldProtocol asLowercase beginsWith: self methodCategory ])
		ifTrue:
			[ (self contents
				inject: false
				into: [ :bool :each | (each aMethodRecategorized: anEvent) or: [ bool ] ])
				ifFalse: [ AltBrowserNeo aNodeToRebuilt: self ].
			^ true ].
	^ false