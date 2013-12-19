user actions
onTrappedKey: anEvent for: targetMorph
	"Trapped keys trigger deleting the target morph and sending them to the requestor."

	targetMorph delete.
	anEvent hand newKeyboardFocus: requestor.
	anEvent wasHandled: false.
	requestor handleKeystroke: anEvent