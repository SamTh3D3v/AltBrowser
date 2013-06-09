updating
selection: anItem
	"It goes directly here."

	| sel |
	anItem selectedNodePath notNil ifTrue: [sel := anItem selectedNodePath last].
	super selection: anItem.
	self updateTextKeymap.
	self updateTreeKeymap.
	self updateTitle.
	sel isNil
		ifTrue: [ 
			textMorph classOrMetaClass: nil.
			self source aboutToStyle: false.
			self source contents: '' ]
		ifFalse: [
			textMorph classOrMetaClass: sel sourceClass.
			self source aboutToStyle: sel isStyled.
			self source contents: sel sourceCode.
			self history add: sel]