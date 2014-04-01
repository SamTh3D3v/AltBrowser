updating
aMCWorkingCopyCreated: anEvent
	"Either match to itself or pass to its children."

	self purgeCode.
	self code add: DateAndTime now -> anEvent workingCopy packageName asSymbol.
self explore.
	AltBrowser aNodeToRebuilt: self.
	^ false