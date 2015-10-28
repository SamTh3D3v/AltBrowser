updating
aClassRepackaged: anEvent
	"Propagate the event. Note if this belong to our package."

	| result |
	result := self contents
		inject: false
		into: [ :bool :each | (each aClassRepackaged: anEvent) or: [ bool ] ].
	(anEvent oldPackage name = self packageName
		or: [ anEvent newPackage name = self packageName ])
		ifTrue: [ AltBrowserNeo aNodeToRebuilt: self.
			^ true ].
	^ result