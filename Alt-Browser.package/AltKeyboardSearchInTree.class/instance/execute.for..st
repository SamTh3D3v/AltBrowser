execution
execute: anEvt for: aMorph
	"OK. requestor is the AltBrowser. Target is the Tree. Evt is the event that is triggering the command."

	"Notes: to get all keystrokes, use an event handler with on: #keyStroke send: #whatever to: self.
	Notes: use a StringMorphEditor.
	Notes: the event will be a keyStroke, is there a hand in that event?
	Notes: what would be the bounds?
	Notes: what should be the initial contents? The first key?"

	| textMorph |
	{  anEvt. aMorph } explore.
	textMorph := AltTextSearchMorph new contents: (String with: anEvt keyCharacter).	"contentsAsIs: aText"	"	textMorph beAllFont: self fontToUse."
	textMorph
		bounds: (aMorph bounds corner + (10 @ 10) corner: (aMorph bounds right - 20) @ (StandardFonts defaultFont height + 4)).
	textMorph addDropShadow.
	aMorph addMorphFront: textMorph.
	anEvt hand newKeyboardFocus: textMorph.
	textMorph editor selectFrom: 1 to: textMorph paragraph text string size.
	textMorph on: #keyStroke send: #onKey:for: to: self