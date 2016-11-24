updating
aCategoryAdded: anEvent
	"Pass through that event."

	^ self contents inject: false into: [ :bool :each | (each aCategoryAdded: anEvent) or: [ bool ] ]