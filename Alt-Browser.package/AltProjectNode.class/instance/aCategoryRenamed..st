updating
aCategoryRenamed: anEvent
	"Pass through that event."

	^ self contents inject: false into: [ :bool :each | (each aCategoryRenamed: anEvent) or: [ bool ] ]