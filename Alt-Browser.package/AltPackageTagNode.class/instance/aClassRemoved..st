updating
aClassRemoved: anEvent
	"If below it's true, rebuilt itself. Return false in any case to stop the update propagation above."

	(self contents inject: false into: [ :bool :each | (each aClassRemoved: anEvent) or: [ bool ] ])
		ifTrue: [ AltBrowser aNodeToRebuilt: self ].
	^ false