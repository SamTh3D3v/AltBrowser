updating
aClassRecategorized: anEvent
	"Answer true if the category matches."

	(anEvent newCategory = self categoryName or: [ anEvent oldCategory = self categoryName ])
		ifTrue: [ 
			AltBrowser aNodeToRebuilt: self.
			^ true ]
		ifFalse: [ ^ false ]