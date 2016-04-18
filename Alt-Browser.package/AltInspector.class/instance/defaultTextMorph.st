user interface
defaultTextMorph
	^ (AltPluggableTextMorph
		on: self
		text: nil
		accept: nil
		readSelection: nil
		menu: #buildTextMenu:)
		font: StandardFonts codeFont;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		yourself