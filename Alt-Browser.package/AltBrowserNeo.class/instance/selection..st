selecting
selection: anAltSelectionChanged
	"It goes directly here."

	"Am I going in there too often and it confuses the navigation?"

	"Can I back-select from there if I should not move the selection (unaccepted edits)?"

	| sel |
	anAltSelectionChanged newIndexes ifNil: [ ^ self ].
	anAltSelectionChanged newIndexes isEmpty
		ifTrue: [ sel := nil ]
		ifFalse:
			[ sel := root at: anAltSelectionChanged newIndexes first ].
	self isSelectionUpdate
		ifTrue: [ ^ self ].
	self updateTextKeymap.
	self updateTreeKeymap.
	self updateTitle.
	sel isNil
		ifTrue:
			[ textMorph classOrMetaClass: nil.
			self source aboutToStyle: false.
			self source contents: ''.
			selection := nil ]
		ifFalse:
			[ textMorph classOrMetaClass: sel styleClass.
			self source aboutToStyle: sel isStyled.
			self source contents: sel sourceCode.
			self history add: sel.
			sel item selectIn: self.
			selection := sel ]