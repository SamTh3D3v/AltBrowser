user actions
onCompletionKey: targetMorph
	"Complete the best match, open the selected node."

	"Consider that, when the completion key is hit, it's the selected node that we open. If no selection, select the first node. Expand, ensure display is correct, then delete the command."

	requestor selectedMorph
		ifNil: [ 
			requestor setSelectedMorph: requestor allNodeMorphs first.
			requestor scrollSelectionIntoView ].
	requestor selectedMorph isExpanded
		ifFalse: [ requestor selectedMorph toggleExpandedState ].
	requestor
		adjustSubmorphPositions;
		scrollSelectionIntoView.
	targetMorph delete