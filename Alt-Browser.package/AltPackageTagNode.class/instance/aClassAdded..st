updating
aClassAdded: anEvent
	"Answer true if the category matches."

	anEvent classCategory = self category
		ifTrue: [ 
			AltBrowser aNodeToRebuilt: self.
			^ true ]
		ifFalse: [ ^ false ]