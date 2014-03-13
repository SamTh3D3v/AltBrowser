updating
aMethodAdded: anEvent
	"Pass through to childrens."

	(self rpackage definesOrExtendsClass: anEvent methodClass)
		ifTrue: [ ^ self contents inject: false into: [ :bool :each | (each aMethodAdded: anEvent) or: [ bool ] ] ].
	^ false