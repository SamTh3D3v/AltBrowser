execution
execute: anEvt for: aMorph
	"OK. anEvt is the event that is triggering the command. aMorph is the tree."

	| textMorph aMorphBounds |
	requestor := aMorph.
	textMorph := AltTextSearchMorph new contents: (String with: anEvt keyCharacter).
	aMorphBounds := aMorph boundsInWorld.
	textMorph
		bounds: (aMorphBounds origin + (10 @ 10) corner: (aMorphBounds right - 20) @ (StandardFonts defaultFont height + 4)).
	textMorph addDropShadow.
	textMorph setBorderStyle: #simple.
	textMorph
		on: self completionKeys
		do: [ :targetMorph :targetMorph2 :keyEvent | self onCompletionKey: keyEvent for: targetMorph ].
	textMorph
		on: self trappedKeys
		do: [ :targetMorph :targetMorph2 :keyEvent | self onTrappedKey: keyEvent for: targetMorph ].
	textMorph editor selectFrom: 2 to: textMorph paragraph text string size.
	textMorph on: #keyStroke send: #onKey:for: to: self.
	aMorph pasteUpMorph addMorph: textMorph.
	anEvt hand newKeyboardFocus: textMorph.
	self onKey: anEvt for: textMorph	"To call the standard processing on the key used to open the text."