private
withSelectionDo: aBlock
	"While doing a block, make sure we maintain our selection and state."

	| selItem prev |
	(selection isNil or: [ selection selectedNodePath isNil ])
		ifTrue: [ ^ aBlock value ].
	selItem := selection selectedNodePath last complexContents.
	prev := isSelectionUpdate.
	isSelectionUpdate := true.
	aBlock
		ensure: [ 
			(self findMorphNodeForItem: selItem)
				ifNil: [ 
					isSelectionUpdate := prev.
					self deselectAll ]
				ifNotNil: [ :selMorph | 
					self
						requestView:
							(MorphTreeChangeRequest new
								action: #setSelectedMorph:;
								arguments: (Array with: selMorph);
								yourself).
					isSelectionUpdate := prev ] ]