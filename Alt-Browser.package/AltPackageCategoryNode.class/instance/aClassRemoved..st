updating
aClassRemoved: anEvent
	"Pass through that event."

	^ self contents inject: false into: [ :bool :each | (each aClassRemoved: anEvent) or: [ bool ] ]