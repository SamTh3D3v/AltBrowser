updating
aClassRepackaged: anEvent
	"Propagate the event. Note if this belong to our package."

	| result |
	result := self contents inject: false into: [ :bool :each | (each aClassRepackaged: anEvent) or: [ bool ] ].
	(anEvent oldPackage name = item packageName or: [ anEvent newPackage name = item packageName ])
		ifTrue: [ 
			AltBrowser aNodeToRebuilt: self.
			^ true ].
	^ result