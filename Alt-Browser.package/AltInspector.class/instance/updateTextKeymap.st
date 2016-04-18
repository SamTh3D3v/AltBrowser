shortcuts
updateTextKeymap
	"Update the text keymap. Reset the dispatcher and make it an AltKMDispatcher if needed."

	textMorph ifNil: [ ^ self ].
	(textMorph kmDispatcher isKindOf: AltKMDispatcher)
		ifFalse: [ textMorph
				setProperty: #kmDispatcher
				toValue: (AltKMDispatcher target: textMorph) ].
	(textMorph textMorph kmDispatcher isKindOf: AltKMDispatcher)
		ifFalse: [ textMorph textMorph
				setProperty: #kmDispatcher
				toValue: (AltKMDispatcher target: textMorph textMorph) ].
	{textMorph kmDispatcher.
	textMorph textMorph kmDispatcher}
		do: [ :aKMDispatcher | 
			aKMDispatcher reset.
			aKMDispatcher attachCategory: #MorphFocusCtrlNavigation.
			self buildTextShortcutsOn: aKMDispatcher with: self ]