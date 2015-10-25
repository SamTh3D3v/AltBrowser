updating
aClassRepackaged: anEvent
	"Answer true if the category matches."

	(anEvent newPackage name = self packageName
		or: [ anEvent oldPackage name = self packageName ])
		ifTrue:
			[ AltBrowser aNodeToRebuilt: self.
			AltBrowserNeo aNodeToRebuilt: self.
			^ true ]
		ifFalse: [ ^ false ]