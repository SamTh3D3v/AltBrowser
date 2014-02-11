updating
aNodeRebuilt: anEvent
	"Similar to others. Search for the node, force a rebuild of the node."

	| r result selItem prev |
	selItem := selection selectedNodePath last complexContents.
	prev := isSelectionUpdate.
	isSelectionUpdate := true.
	self treeMorph nodeList detect: [ :rootItem | (result := rootItem findItem: anEvent node) notNil ] ifNone: [ ^ self ].
	result notNil
		ifTrue: [ 
			result rebuildContents.
			r := self findMorphNodeForItem: result.
			r notNil
				ifTrue: [ r rebuildChildren ] ].	"reselect:"
	(self findMorphNodeForItem: selItem)
		ifNil: [ 
			isSelectionUpdate := prev.
			self deselectAll ]
		ifNotNil: [ :selMorph | 
			self
				requestView:
					(MorphTreeChangeRequest new
						action: #setSelectedMorph:;
						arguments: (Array with: selMorph)).
			isSelectionUpdate := prev ]