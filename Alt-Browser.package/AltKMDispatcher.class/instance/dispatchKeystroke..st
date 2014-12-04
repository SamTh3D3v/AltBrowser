dispatching
dispatchKeystroke: aKeyEvent
	"We override to make sure we do not propagate Cmd and Ctrl keys to old code."

	super dispatchKeystroke: aKeyEvent.
	aKeyEvent commandKeyPressed
		ifTrue: [ aKeyEvent wasHandled: true ]