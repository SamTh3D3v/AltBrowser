updating
aClassRecategorized: anEvent
	"Answer true if the category matches."

	(anEvent newCategory = item categoryName or: [ anEvent oldCategory = item categoryName ])
		ifTrue: [ 
			AltBrowser aNodeToRebuilt: self.
			^ true ]
		ifFalse: [ ^ false ]