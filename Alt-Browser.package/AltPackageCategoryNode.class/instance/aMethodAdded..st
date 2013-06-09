updating
aMethodAdded: anEvent
	"Pass through to childrens."

	^ self contents inject: false into: [ :bool :each | (each aMethodAdded: anEvent) or: [ bool ] ]