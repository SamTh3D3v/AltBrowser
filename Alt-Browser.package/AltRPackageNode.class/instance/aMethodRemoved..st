updating
aMethodRemoved: anEvent
	"Pass through to childrens."

	^ self contents inject: false into: [ :bool :each | (each aMethodRemoved: anEvent) or: [ bool ] ]