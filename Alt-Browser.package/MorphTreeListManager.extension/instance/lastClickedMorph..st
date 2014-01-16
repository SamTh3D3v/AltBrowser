*alt-browser-override
lastClickedMorph: aNodeMorph

	lastClickedMorph ifNotNil: [ lastClickedMorph complexContents ifNotNil: [:cc | cc lastClicked: false] ].
	lastClickedMorph := aNodeMorph.
	aNodeMorph ifNotNil: [ aNodeMorph complexContents lastClicked: true ].