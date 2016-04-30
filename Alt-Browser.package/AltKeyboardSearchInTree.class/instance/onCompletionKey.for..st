user actions
onCompletionKey: anEvent for: targetMorph
	"Complete the best match, open the selected node."

	"Consider that, when the completion key is hit, it's the selected node that we open. If no selection, select the first node. Expand, ensure display is correct, then delete the command."

	requestor selectedRowIndex = 0
		ifTrue: [ requestor selectRowIndex: 1 ].
	(requestor model at: requestor selectedRowIndex) expand.
	requestor ensureVisibleSelection.
	targetMorph delete.
	anEvent hand newKeyboardFocus: requestor