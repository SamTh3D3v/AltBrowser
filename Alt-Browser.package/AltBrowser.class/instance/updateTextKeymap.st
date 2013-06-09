shortcuts
updateTextKeymap
	"Update the text keymap. Change the key dispatcher if needed. Change all dispatchers to force and really force default shortcuts not to be used."

	| keyMorph |
	keyMorph := self targetShortcutMorph.
	(textModel widget kmDispatcher isKindOf: AltKMDispatcher)
		ifFalse: [ textModel widget setProperty: #kmDispatcher toValue: (AltKMDispatcher target: textModel widget) ].
	(keyMorph kmDispatcher isKindOf: AltKMDispatcher)
		ifFalse: [ keyMorph setProperty: #kmDispatcher toValue: (AltKMDispatcher target: keyMorph) ]
		ifTrue: [ keyMorph kmDispatcher reset ].
	self selectedItem notNil
		ifTrue: [ self selectedItem item buildTextShortcutsOn: keyMorph with: self ]