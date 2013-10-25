updating
aNodeUpdated: anEvent
	| r |
	r := self findMorphNodeForAbstractItem: anEvent node.
	r notNil
		ifTrue: [ 
			r submorphs do: [ :e | e delete ].
			r initRow ]