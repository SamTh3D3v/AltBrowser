updating
aClassAdded: anEvent
	"Answer true if the category matches."

	anEvent classCategory = item name
		ifTrue: [ 
			AltBrowser aNodeToRebuilt: self.
			^ true ]
		ifFalse: [ ^ false ]