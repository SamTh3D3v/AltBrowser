event handling
handleKeystroke: anEvent
	"Why do I have to add that? The event handler stuff is removed from TextMorph."

	super handleKeystroke: anEvent.
	^ self eventHandler ifNotNil: [ :handler | handler keyStroke: anEvent fromMorph: self ]