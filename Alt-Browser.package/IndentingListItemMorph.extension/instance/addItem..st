*Alt-Browser
addItem: aNode
	"Add a submorph for that item."

	| newMorph lc |
	lc := self lastChild.
	newMorph := container indentingItemClass basicNew
		initWithContents: aNode
		prior: lc
		forList: container
		indentLevel: lc indentLevel.
	lc nextSibling: newMorph.
	self isExpanded
		ifTrue: [ 
			container scroller addAllMorphs: {newMorph} after: lc.
			container adjustSubmorphPositions ]