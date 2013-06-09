updating
aClassRenamed: anEvent
	"Pass through that event."

	(self contents inject: false into: [ :bool :each | (each aClassRenamed: anEvent) or: [ bool ] ])
		ifTrue: [ AltBrowser aNodeToRebuilt: self ].
	^ false