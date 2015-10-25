updating
aMethodAdded: anEvent
	"Check that we are the right protocol. Don't forget that the underlying class extension could need a rebuilt as well."

	anEvent protocol isNil
		ifTrue: [ ^ false ].
	(anEvent protocol asLowercase beginsWith: self methodCategory)
		ifTrue:
			[ (self contents
				inject: false
				into:
					[ :bool :each | (each aMethodAdded: anEvent) or: [ bool ] ])
				ifFalse:
					[ AltBrowser aNodeToRebuilt: self.
					AltBrowserNeo aNodeToRebuilt: self ].
			^ true ].
	^ false