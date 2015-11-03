updating
toggleExpanded: aCodeItemModel
	"Try to select a parent if selection is among the collapsed nodes."

	aCodeItemModel isExpanded
		ifTrue: [ self changed ]
		ifFalse:
			[ self model selectedNode ifNil: [ ^ self changed ].
			(self model selectedNode isAnAncestor: aCodeItemModel)
				ifTrue:
					[ | sel |
					sel := self indexOf: aCodeItemModel.
					self model treeMorph selectRowIndexesNoUpdate: (Array with: sel).
					self changed ]
				ifFalse: [ self changed ] ]