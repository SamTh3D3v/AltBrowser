updating
aMCWorkingCopyDeleted: anEvent
	"Remove if present, rebuilt if necessary."

	| oldSize |
	oldSize := self item size.
	self item
		removeAllSuchThat: [ :el | el value = anEvent workingCopy packageName ].
	self purgeCode.
	oldSize > self item size
		ifTrue:
			[ AltBrowser aNodeToRebuilt: self.
			AltBrowserNeo aNodeToRebuilt: self ].
	^ false