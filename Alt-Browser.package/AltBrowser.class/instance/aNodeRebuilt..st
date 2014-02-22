updating
aNodeRebuilt: anEvent
	"Similar to others. Search for the node, force a rebuild of the node."

	| r result |
	self
		withSelectionDo: [ 
			(self treeMorph nodeList anySatisfy: [ :rootItem | (result := rootItem findItem: anEvent node) notNil ]) ifFalse: [ ^ self ].
			result notNil
				ifTrue: [ 
					result rebuildContents.
					r := self findMorphNodeForItem: result.
					r notNil
						ifTrue: [ r rebuildChildren ] ] ]