updating
aClassRecategorized: anEvent
	"Propagate the event. Note if this belong to our package."

	| result |
	result := self contents
		inject: false
		into:
			[ :bool :each | (each aClassRecategorized: anEvent) or: [ bool ] ].
	(anEvent oldCategory = self packageName
		or: [ anEvent newCategory = self packageName ])
		ifTrue:
			[ AltBrowser aNodeToRebuilt: self.
			AltBrowserNeo aNodeToRebuilt: self.
			^ true ].
	^ result