updating
aClassRepackaged: anEvent
	"Answer true if the category matches."

	(anEvent newPackage name = item name or: [ anEvent oldPackage name = item name ])
		ifTrue: [ 
			AltBrowser aNodeToRebuilt: self.
			^ true ]
		ifFalse: [ ^ false ]