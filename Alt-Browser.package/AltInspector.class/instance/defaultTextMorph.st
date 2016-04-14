user interface
defaultTextMorph
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