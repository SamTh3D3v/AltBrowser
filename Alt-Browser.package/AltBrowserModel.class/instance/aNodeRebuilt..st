updating
aNodeRebuilt: aNode
	| r result |
	tree roots detect: [ :rootItem | (result := rootItem findItem: aNode) notNil ] ifNone: [ ^ self ].
	result notNil
		ifTrue: [ 
			result rebuildContents.
			r := (treeMorph scroller submorphs at: 1) findItem: result.
			r notNil
				ifTrue: [ r rebuildChildren ] ]