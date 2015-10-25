updating
aClassRecategorized: anEvent
	"Answer true if the category matches."

	(anEvent newCategory = self category
		or: [ anEvent oldCategory = self category ])
		ifTrue:
			[ AltBrowser aNodeToRebuilt: self.
			AltBrowserNeo aNodeToRebuilt: self.
			^ true ]
		ifFalse: [ ^ false ]