updating
aClassRecategorized: anEvent
	"Answer true if the category matches."

	(anEvent newCategory = code categoryName or: [ anEvent oldCategory = code categoryName ])
		ifTrue: [ 
			AltBrowser aNodeToRebuilt: self.
			^ true ]
		ifFalse: [ ^ false ]