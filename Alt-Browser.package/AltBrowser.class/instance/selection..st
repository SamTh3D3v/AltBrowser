selecting
selection: anAltSelectionChanged
	"If I reach here, selection can be updated."

	anAltSelectionChanged newIndexes isEmpty
		ifTrue: [ selection := nil ]
		ifFalse: [ selection := anAltSelectionChanged newItems first ].
	self updateTextKeymap.
	self updateTreeKeymap.
	self updateTitle.
	selection isNil
		ifTrue:
			[ textMorph ifNotNil: [ :t | t classOrMetaClass: nil ].
			self source aboutToStyle: false.
			self source contents: '' ]
		ifFalse:
			[ textMorph
				ifNotNil: [ :t | t classOrMetaClass: selection styleClass ].
			self source aboutToStyle: selection isStyled.
			self source contents: selection sourceCode.
			self history add: selection ]