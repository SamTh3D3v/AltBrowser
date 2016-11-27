updating
aMCWorkingCopyModified: anEvent
	"Update oneself if a copy is modified... our status is linked to whether one of our packages is modified."

	^ (self contents
		inject: false
		into: [ :bool :each | (each aMCWorkingCopyModified: anEvent) or: [ bool ] ])
		ifTrue: [ AltBrowser aNodeToRebuilt: self.
			true ]
		ifFalse: [ false ]