*Alt-Browser
addItem: aNode
	"Add a submorph for that item. Sometime, the item may already be there; it depends on how
	the code goes through this."

	| newMorph lc |
	(self findItem: aNode item) ifNotNil: [ ^ self ].
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