updating
aClassAdded: anEvent
	"Answer true if the category matches."

	anEvent classCategory = self category
		ifTrue: [ AltBrowserNeo aNodeToRebuilt: self.
			^ true ]
		ifFalse: [ ^ false ]