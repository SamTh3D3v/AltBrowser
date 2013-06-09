updating
aClassAdded: anEvent
	"Propagate the event. Note if this belong to our package."

	| result |
	result := self contents inject: false into: [ :bool :each | (each aClassAdded: anEvent) or: [ bool ] ].
	anEvent classAdded package name = item packageName
		ifTrue: [ 
			AltBrowser aNodeToRebuilt: self.
			^ true ].
	^ result