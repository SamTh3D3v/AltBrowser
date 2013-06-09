updating
aClassRecategorized: anEvent
	"Propagate the event. Note if this belong to our package."

	| result |
	result := self contents inject: false into: [ :bool :each | (each aClassRecategorized: anEvent) or: [ bool ] ].
	(anEvent oldCategory = item packageName or: [ anEvent newCategory = item packageName ])
		ifTrue: [ 
			AltBrowser aNodeToRebuilt: self.
			^ true ].
	^ result