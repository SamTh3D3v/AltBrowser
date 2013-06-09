dispatching
dispatchKeystroke: aKeyEvent
	"Forbid propagation of shortcuts to the rest of the keystroke chain by saying I handle all controls and command keypress, even if it isn't true."

	super dispatchKeystroke: aKeyEvent.
	(aKeyEvent controlKeyPressed or: [ aKeyEvent commandKeyPressed ])
		ifTrue: [ aKeyEvent wasHandled: true ]