updating
aNodeRebuilt: anEvent
	"Similar to others. Search for the node, force a rebuild of the node."

	| r result |
	treeMorph nodeList detect: [ :rootItem | (result := rootItem findItem: anEvent node) notNil ] ifNone: [ ^ self ].
	result notNil
		ifTrue: [ 
			result rebuildContents.
			r := self findMorphNodeForItem: result.
			r notNil
				ifTrue: [ r rebuildChildren ] ]