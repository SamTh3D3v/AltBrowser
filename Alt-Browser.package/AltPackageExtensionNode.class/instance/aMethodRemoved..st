updating
aMethodRemoved: anEvent
	"Check that we are the right protocol. Don't forget that the underlying class extension could need a rebuilt as well. There is an issue when the underlying class loses all its extensions but still stay in the extension listing."

	(anEvent protocol asLowercase beginsWith: self methodCategory)
		ifTrue: [ 
			(self contents inject: false into: [ :bool :each | (each aMethodRemoved: anEvent) or: [ bool ] ])
				ifTrue: [ AltBrowser aNodeToRebuilt: self ].
			^ true ].
	^ false