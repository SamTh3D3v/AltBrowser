updating
aNodeUpdated: anEvent
	| r result |
	treeMorph nodeList detect: [ :rootItem | (result := rootItem findItem: anEvent node) notNil ] ifNone: [ ^ self ].
	result notNil
		ifTrue: [ 
			r := self findMorphNodeForItem: result.
			r notNil
				ifTrue: [ 
					r submorphs do: [ :e | e delete ].
					r initRow ] ]