shortcuts
updateTextKeymap
	"Update the text keymap. Change the key dispatcher if needed."

	| keyMorph |
	keyMorph := self targetShortcutMorph.
	(keyMorph kmDispatcher isKindOf: AltKMDispatcher)
		ifFalse: [ keyMorph setProperty: #kmDispatcher toValue: (AltKMDispatcher target: keyMorph) ]
		ifTrue: [ keyMorph kmDispatcher reset ].
	self selectedItem notNil
		ifTrue: [ self selectedItem item buildTextShortcutsOn: keyMorph with: self ]