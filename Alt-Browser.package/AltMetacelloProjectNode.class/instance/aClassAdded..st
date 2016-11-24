updating
aClassAdded: anEvent
	"Pass through that event."

	^ self contents inject: false into: [ :bool :each | (each aClassAdded: anEvent) or: [ bool ] ]