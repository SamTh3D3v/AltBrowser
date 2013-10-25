updating
aClassAdded: anEvent
	"Answer true if the category matches."

	anEvent classAdded package name = item name
		ifTrue: [ 
			AltBrowser aNodeToRebuilt: self.
			^ true ]
		ifFalse: [ ^ false ]