updating
aMCWorkingCopyDeleted: anEvent
	"If one of our children say yes, rebuilt ourselves!"

	^ (self contents
		inject: false
		into: [ :bool :each | (each aMCWorkingCopyDeleted: anEvent) or: [ bool ] ])
		ifTrue: [ AltBrowser aNodeToRebuilt: self.
			true ]
		ifFalse: [ false ]