updating
selection: anItem
	"It goes directly here."

	self updateTextKeymap: textMorph kmDispatcher.
	self updateTreeKeymap: treeMorph kmDispatcher.
	self updateTitle.
	super selection: anItem.
	anItem isNil
		ifTrue: [ 
			self source value: ''	"textModel behavior: nil.
					textModel aboutToStyle: false" ]
		ifFalse: [ 
			self source contents: anItem selectedNodePath last sourceCode.	"textModel behavior: sel sourceClass.
					textModel aboutToStyle: sel isStyled."
			self history add: anItem selectedNodePath last]