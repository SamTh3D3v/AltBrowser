updating
aMethodRemoved: anEvent
	"Pass through to childrens."

	((self rpackage definesClass: anEvent methodClass) or: [ self rpackage isYourClassExtension: anEvent protocol ])
		ifTrue: [ ^ self contents inject: false into: [ :bool :each | (each aMethodRemoved: anEvent) or: [ bool ] ] ].
	^ false