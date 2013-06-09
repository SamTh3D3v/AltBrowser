*alt-browser
addItem: aNode
	"Add a submorph for that item. Sometime, the item may already be there; it depends on how
	the code goes through this. Modified to note where the node is to be put (newItemNode)."
	
	"The short version is too drastic. Current version seems to work a bit better. There are too many layers of object for this to look anywhere elegant (and correct)."

	"self refreshExpandedState.
	container adjustSubmorphPositions."
	
	| newMorph lc nc |
	(self findItem: aNode item) ifNotNil: [ ^ self ].
	aNode parentNode notNil
		ifTrue: [ 
			| i j |
			i := aNode parentNode contents indexOf: aNode.
			j := 1.
			[ j < i ]
				whileTrue: [ 
					lc isNil
						ifTrue: [ lc := firstChild ]
						ifFalse: [ lc := lc nextSibling ].
					j := j + 1 ] ]
		ifFalse: [ lc := self lastChild ].
	lc isNil
		ifFalse: [ nc := lc nextSibling ].
	self assert: (self item model isKindOf: PluggableTreeMorph ).
	newMorph := container indentingItemClass basicNew
		initWithContents: (PluggableTreeItemNode with: aNode model: self item model)
		prior: lc
		forList: container
		indentLevel: lc indentLevel.
	lc isNil
		ifTrue: [ firstChild := newMorph ]
		ifFalse: [ lc nextSibling: newMorph ].
	nc isNil
		ifFalse: [ newMorph nextSibling: nc ].
	self isExpanded
		ifTrue: [ 
			container scroller addAllMorphs: {newMorph} after: lc.
			container adjustSubmorphPositions ]