updating
aClassAdded: anEvent
	"Check if the class is an extension class. Is it possible when adding a class?"

	(self rpackage extendsClass: anEvent classAdded)
		ifTrue:
			[ AltBrowser aNodeToRebuilt: self.
			AltBrowserNeo aNodeToRebuilt: self.
			^ true ]
		ifFalse: [ ^ false ]