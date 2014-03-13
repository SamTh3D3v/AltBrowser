updating
aMethodAdded: anEvent
	"Pass through to childrens."

	self rpackage == anEvent rpackage
		ifTrue: [ 
			^ contents
				ifNotNil: [ :c | c inject: false into: [ :bool :each | (each aMethodAdded: anEvent) or: [ bool ] ] ]
				ifNil: [ false ] ].
	^ false