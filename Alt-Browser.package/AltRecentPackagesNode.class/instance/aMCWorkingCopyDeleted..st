updating
aMCWorkingCopyDeleted: anEvent
	"Either match to itself or pass to its children."

	| oldSize |
	oldSize := self code size.
	self code removeAllSuchThat: [:el | el value = anEvent workingCopy packageName].
	self purgeCode.
	oldSize < self code size
		ifTrue: [ AltBrowser aNodeToRebuilt: self ].
	^ false