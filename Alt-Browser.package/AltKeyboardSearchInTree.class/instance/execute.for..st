execution
execute: anEvt for: aMorph
	"OK. requestor is the AltBrowser. Target is the Tree. Evt is the event that is triggering the command. aMorph is the tree. aMorph is the tree morph."

	"Notes: to get all keystrokes, use an event handler with on: #keyStroke send: #whatever to: self.
	Notes: use a AltTextSearchMorph...
	Notes: the event will be a keyStroke, is there a hand in that event?
	Notes: what would be the bounds?
	Notes: what should be the initial contents? The first key?"

	"Use keymapping to trap certain keys."

	| textMorph aMorphBounds |
	requestor := aMorph.
	textMorph := AltTextSearchMorph new contents: (String with: anEvt keyCharacter).
	aMorphBounds := aMorph boundsInWorld.
	textMorph
		bounds: (aMorphBounds origin + (10 @ 10) corner: (aMorphBounds right - 20) @ (StandardFonts defaultFont height + 4)).
	textMorph addDropShadow.
	textMorph setBorderStyle: #simple.
	textMorph
		bindKeyCombination: self completionKeys
		toAction: [ :targetMorph :targetMorph2 :keyEvent | self onCompletionKey: keyEvent for: targetMorph ].
	textMorph
		bindKeyCombination: self trappedKeys
		toAction: [ :targetMorph :targetMorph2 :keyEvent | self onTrappedKey: keyEvent for: targetMorph ].
	textMorph editor selectFrom: 2 to: textMorph paragraph text string size.
	textMorph on: #keyStroke send: #onKey:for: to: self.
	aMorph pasteUpMorph addMorph: textMorph.
	anEvt hand newKeyboardFocus: textMorph.
	self onKey: anEvt for: textMorph	"To call the standard processing."