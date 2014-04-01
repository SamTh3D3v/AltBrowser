updating
aMCWorkingCopyCreated: anEvent
	"Either match to itself or pass to its children."

	self purgeCode.
	self code add: DateAndTime now -> anEvent workingCopy packageName asSymbol.
	AltBrowser aNodeToRebuilt: self.
	^ false