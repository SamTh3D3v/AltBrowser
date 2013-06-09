updating
aNodeUpdated: aNode
	| r result |
	treeMorph nodeList detect: [ :rootItem | (result := rootItem findItem: aNode) notNil ] ifNone: [ ^ self ].
	result notNil
		ifTrue: [ 
			r := self findMorphNodeForItem: result.
			r notNil
				ifTrue: [ 
					r submorphs do: [ :e | e delete ].
					r initRow ] ]