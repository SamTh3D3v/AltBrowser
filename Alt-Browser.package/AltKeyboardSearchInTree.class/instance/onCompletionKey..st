user actions
onCompletionKey: targetMorph
	"Complete the best match, open the selected node."

	"Should be caught by keymapping, to be able to redirect the character instead of removing it from the paragraph."

	(requestor allNodeMorphs detect: [ :each | each complexContents asText beginsWith: targetMorph contents ] ifNone: [  ])
		ifNotNil: [ :aNodeMorph | 
			| sz |
			aNodeMorph isExpanded
				ifFalse: [ aNodeMorph toggleExpandedState ].
			requestor
				adjustSubmorphPositions;
				setSelectedMorph: aNodeMorph;
				scrollSelectionIntoView.
			targetMorph contents: aNodeMorph complexContents asText.
			sz := targetMorph contents size.
			targetMorph editor selectFrom: sz + 1 to: sz ]