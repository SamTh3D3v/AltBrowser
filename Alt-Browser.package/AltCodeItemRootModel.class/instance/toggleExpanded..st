updating
toggleExpanded: aCodeItemModel
	"Try to select a parent if selection is among the collapsed nodes."

	aCodeItemModel isExpanded
		ifTrue: [ self changed ]
		ifFalse:
			[ self model selectedNode ifNil: [ ^ super changed ].
			(self model selectedNode isAnAncestor: aCodeItemModel)
				ifTrue:
					[ self model treeMorph
						selectRowIndexes: (Array with: (self indexOf: aCodeItemModel)) ]
				ifFalse: [ self changed ] ]