updating
aClassRepackaged: anEvent
	"Answer true if the category matches."

	(anEvent newPackage name = item packageName or: [ anEvent oldPackage name = item packageName ])
		ifTrue: [ 
			AltBrowser aNodeToRebuilt: self.
			^ true ]
		ifFalse: [ ^ false ]