selecting
selection: anAltSelectionChanged
	"It goes directly here."

	"Am I going in there too often and it confuses the navigation?"

	"Can I back-select from there if I should not move the selection (unaccepted edits)?"

	anAltSelectionChanged newIndexes ifNil: [ ^ self ].
	anAltSelectionChanged newIndexes isEmpty
		ifTrue: [ selection := nil ]
		ifFalse:
			[ selection := root at: anAltSelectionChanged newIndexes first ].
	self isSelectionUpdate
		ifTrue: [ ^ self ].
	self updateTextKeymap.
	self updateTreeKeymap.
	self updateTitle.
	selection isNil
		ifTrue:
			[ textMorph classOrMetaClass: nil.
			self source aboutToStyle: false.
			self source contents: '' ]
		ifFalse:
			[ textMorph classOrMetaClass: selection styleClass.
			self source aboutToStyle: selection isStyled.
			self source contents: selection sourceCode.
			self history add: selection.
			selection item selectIn: self ]