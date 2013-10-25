updating
aClassReorganized: anEvent
	"Pass through that event."

	^ self contents inject: false into: [ :bool :each | (each aClassReorganized: anEvent) or: [ bool ] ]