updating
aMethodRecategorized: anEvent
	"Pass through to childrens."

		^ self contents inject: false into: [ :bool :each | (each aMethodRecategorized: anEvent) or: [ bool ] ]