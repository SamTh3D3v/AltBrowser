updating
aMethodRemoved: anEvent
	"Pass through to childrens."

	((self rpackage definesClass: anEvent methodClass) or: [ self rpackage isYourClassExtension: anEvent protocol ])
		ifTrue: [ 
			^ contents
				ifNotNil: [ :c | c inject: false into: [ :bool :each | (each aMethodRemoved: anEvent) or: [ bool ] ] ]
				ifNil: [ false  ] ].
	^ false