updating
aClassRecategorized: anEvent
	"Answer true if the category matches."

	(anEvent newCategory = item name or: [ anEvent oldCategory = item name ])
		ifTrue: [ 
			AltBrowser aNodeToRebuilt: self.
			^ true ]
		ifFalse: [ ^ false ]