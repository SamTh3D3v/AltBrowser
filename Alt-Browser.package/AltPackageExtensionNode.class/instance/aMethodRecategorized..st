updating
aMethodRecategorized: anEvent
	"Check that we are the right protocol. Don't forget that the underlying class extension could need a rebuilt as well."

	((anEvent newProtocol beginsWith: self methodCategory) or: [ anEvent oldProtocol beginsWith: self methodCategory ])
		ifTrue: [ 
			(self contents inject: false into: [ :bool :each | (each aMethodRecategorized: anEvent) or: [ bool ] ])
				ifFalse: [ AltBrowser aNodeToRebuilt: self ].
			^ true ].
	^ false