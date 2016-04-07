view
defaultTextMorph
	PluggableTextMorph stylingClass isNil
		ifTrue: [ PluggableTextMorph stylingClass: SHTextStylerST80 ].
	^ (AltPluggableTextMorph
		on: self source
		text: #contents
		accept: #contents:
		readSelection: nil
		menu: #buildTextMenu:)
		font: StandardFonts codeFont;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		yourself