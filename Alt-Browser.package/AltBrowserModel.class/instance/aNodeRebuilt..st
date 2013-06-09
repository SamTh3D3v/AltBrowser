updating
aNodeRebuilt: aNode
	"Similar to others. Search for the node, force a rebuild of the node."

	| r result |
	treeMorph nodeList detect: [ :rootItem | (result := rootItem findItem: aNode node) notNil ] ifNone: [ ^ self ].
	result notNil
		ifTrue: [ 
			result rebuildContents.
			r := treeMorph allNodeMorphs detect: [ :each | each complexContents == result ] ifNone: [ nil ].
			r notNil
				ifTrue: [ r rebuildChildren ] ]