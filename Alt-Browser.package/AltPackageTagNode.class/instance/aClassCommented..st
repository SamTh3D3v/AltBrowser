updating
aClassCommented: anEvent
	"Pass through that event."

	^ self contents inject: false into: [ :bool :each | (each aClassCommented: anEvent) or: [ bool ] ]