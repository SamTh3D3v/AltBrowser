selecting
updateSelection
	"Update from the model if needed."

	selection := self root selectedItem.
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