updating
toggleExpanded: aCodeItemModel
	"Handle the case of the expanded/unexpanded here."

	aCodeItemModel isExpanded
		ifTrue: [ self changed ]
		ifFalse:
			[ self model selectedNode ifNil: [ ^ super changed ].
			(self model selectedNode isAnAncestor: aCodeItemModel)
				ifTrue:
					[ self model treeMorph
						selectRowIndexes: (Array with: (self indexOf: aCodeItemModel)) ]
				ifFalse: [ self changed ] ]