updating
aClassRepackaged: anEvent
	"Answer true if the category matches."

	(anEvent newPackage name = code packageName or: [ anEvent oldPackage name = code packageName ])
		ifTrue: [ 
			AltBrowser aNodeToRebuilt: self.
			^ true ]
		ifFalse: [ ^ false ]