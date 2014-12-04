user interface
toggleComment
	"Toggle a comment pane at the bottom of the text pane."

	commentMorph isNil
		ifTrue: [ 
			commentMorph := (PluggableTextMorph
				on: self
				text: #itemComment
				accept: nil
				readSelection: nil
				menu: nil)
				font: StandardFonts codeFont;
				hResizing: #spaceFill;
				vResizing: #spaceFill;
				yourself.
			textMorph owner addMorphBack: commentMorph ]
		ifFalse: [ 
			commentMorph delete.
			commentMorph := nil ]