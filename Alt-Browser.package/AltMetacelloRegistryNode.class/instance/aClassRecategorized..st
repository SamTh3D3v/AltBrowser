updating
aClassRecategorized: anEvent
	"Pass through that event."

	^ self contents inject: false into: [ :bool :each | (each aClassRecategorized: anEvent) or: [ bool ] ]