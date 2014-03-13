updating
aMethodAdded: anEvent
	"Pass through to childrens."

	self rpackage == anEvent rpackage
		ifTrue: [ ^ self contents inject: false into: [ :bool :each | (each aMethodAdded: anEvent) or: [ bool ] ] ].
	^ false