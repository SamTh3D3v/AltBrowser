updating
aClassRenamed: anEvent
	"Note: Just say if we match. Don't bother with the class side, see extension for how it is handled."

	^ anEvent oldName == self item
		ifTrue:
			[ self item: anEvent newName.
			AltBrowser aNodeToUpdate: self.
			AltBrowserNeo aNodeToUpdate: self.
			true ]
		ifFalse: [ false ]