shortcuts
updateTextKeymap
	"Update the text keymap."

	| keyMorph |
	keyMorph := self targetShortcutMorph.
	(keyMorph kmDispatcher isKindOf: AltKMDispatcher)
		ifFalse: [ keyMorph setProperty: #kmDispatcher toValue: (AltKMDispatcher target: keyMorph) ]
		ifTrue: [ keyMorph kmDispatcher reset ].
	self selectedItem notNil
		ifTrue: [ self selectedItem item buildTextShortcutsOn: keyMorph with: self ]
		
		"	| c |
"	"First remove the category for our widget, this way removing the keymap itself."	"	self textModel widget detachAllKeymapCategories.
	KMRepository default categoryHolders removeKey: self textModel widget ifAbsent: [#()].
"	"Then remove all shortcuts from the KMRepository."	"	KMRepository default categories removeKey: ('AltBrowser', self identityHash printString) asSymbol ifAbsent: [nil].
"	"If the selected item is not nil, rebuild a keymap."	"	self selectedItem notNil
		ifTrue: [ | keymapBuilder |
			keymapBuilder := self selectedItem item buildTextShortcutsOn: self textModel with: self.
			self textModel widget attachKeymapCategory: ('AltBrowser', self identityHash printString) asSymbol targetting: self]
	"