updating
aClassRepackaged: anEvent
	"Pass through that event."

	^ self contents inject: false into: [ :bool :each | (each aClassRepackaged: anEvent) or: [ bool ] ]