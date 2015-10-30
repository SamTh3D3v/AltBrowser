user actions
onCompletionKey: anEvent for: targetMorph
	"Complete the best match, open the selected node."

	"Consider that, when the completion key is hit, it's the selected node that we open. If no selection, select the first node. Expand, ensure display is correct, then delete the command."

	requestor selectedRowIndex
		ifNil: [ 
			requestor selectRowIndex: 1 ].
	(requestor model at: requestor selectedRowIndex) isExpanded
		ifFalse: [ (requestor model at: requestor selectedRowIndex) toggleExpanded ].
	requestor
		ensureVisibleFirstSelection.
	targetMorph delete.
	anEvent hand newKeyboardFocus: requestor