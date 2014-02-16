event handling
keyboardFocusChange: aBoolean
	"Loosing focus means deleting itself."

	super keyboardFocusChange: aBoolean.
	aBoolean
		ifFalse: [ ^ self delete ]