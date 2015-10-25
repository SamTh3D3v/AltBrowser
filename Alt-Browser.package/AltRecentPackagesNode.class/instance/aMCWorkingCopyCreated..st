updating
aMCWorkingCopyCreated: anEvent
	"Either match to itself or pass to its children."

	self purgeCode.
	self item
		add:
			DateAndTime now -> anEvent workingCopy packageName asSymbol.
	AltBrowser aNodeToRebuilt: self.
	AltBrowserNeo aNodeToRebuilt: self.
	^ false