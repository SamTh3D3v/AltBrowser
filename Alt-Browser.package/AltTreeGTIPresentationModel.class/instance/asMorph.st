user interface
asMorph
	^ (GLMMorphicRenderer new render: item)
		extent: 300 @ 300;
		layoutChanged;
		yourself