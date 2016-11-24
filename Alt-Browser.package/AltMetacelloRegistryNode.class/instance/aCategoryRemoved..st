updating
aCategoryRemoved: anEvent
	"Pass through that event."

	^ self contents inject: false into: [ :bool :each | (each aCategoryRemoved: anEvent) or: [ bool ] ]