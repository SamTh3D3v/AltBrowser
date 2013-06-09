accessing
rebuildNode: aNode
	| r result |
	rootsHolder contents detect: [ :rootItem | (result := rootItem findItem: aNode) notNil ] ifNone: [ ^ self ].
	result notNil
		ifTrue: [ 
			result rebuildContents.
			r := (self widget scroller submorphs at: 1) findItem: result.
			r notNil
				ifTrue: [ r rebuildChildren ] ]