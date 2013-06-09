user interface
buildShortcut: aKMDispatcher
	"Add a shortcut to the keymap. Conditions : must have a keystroke, must wantsKeyboard and must be active."

	(self keystroke isNil or: [ self wantsKeyboard not or: [ self isActive not ] ])
		ifTrue: [ ^ self ].
	aKMDispatcher
		on: self keystroke asKeyCombination
		do: [ self execute ]