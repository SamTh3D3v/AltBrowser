user interface
buildShortcut: aKMDispatcher
	"Add a shortcut to the keymap. Not sure about what the category should be."
	
	self keystroke isNil ifTrue: [ ^self ].
	aKMDispatcher on: self keystroke do: [self execute] 