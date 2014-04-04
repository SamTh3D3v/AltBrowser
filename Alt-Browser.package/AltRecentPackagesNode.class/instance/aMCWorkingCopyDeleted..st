updating
aMCWorkingCopyDeleted: anEvent
	"Remove if present, rebuilt if necessary."

	| oldSize |
	oldSize := self code size.
	self code removeAllSuchThat: [ :el | el value = anEvent workingCopy packageName ].
	self purgeCode.
	oldSize > self code size
		ifTrue: [ AltBrowser aNodeToRebuilt: self ].
	^ false