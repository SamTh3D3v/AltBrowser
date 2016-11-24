updating
aMCWorkingCopyModified: anEvent
	"Just propagate the event."

	^ self contents inject: false into: [ :bool :each | (each aMCWorkingCopyModified: anEvent) or: [ bool ] ]