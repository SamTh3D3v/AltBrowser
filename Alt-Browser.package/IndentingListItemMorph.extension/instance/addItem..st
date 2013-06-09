*alt-browser
addItem: aNode
	"Add a submorph for that item. Sometime, the item may already be there; it depends on how
	the code goes through this. Modified to note where the node is to be put (newItemNode)."

	"The short version is too drastic. Current version seems to work a bit better. There are too many layers of object for this to look anywhere elegant (and correct)."

	"self refreshExpandedState.
	container adjustSubmorphPositions."

	"receiver is the target parent node morph."

	| newMorph lc nc i j |
	(self findItem: aNode item) ifNotNil: [ ^ self ].
	self isExpanded
		ifFalse: [ 
			self changed.
			^ self ].
	aNode parentNode notNil
		ifTrue: [ 
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
		ifTrue: [ nc := self ]
		ifFalse: [ 
			nc := lc.
			[ nc isExpanded ] whileTrue: [ nc := nc lastChild ] ].
	self assert: (complexContents model isKindOf: PluggableTreeMorph).
	newMorph := container indentingItemClass basicNew
		initWithContents: (PluggableTreeItemNode with: aNode model: complexContents model)
		prior: nc
		forList: container
		indentLevel: self indentLevel + 1.
	lc isNil
		ifTrue: [ firstChild := newMorph ]
		ifFalse: [ 
			lc nextSibling == newMorph
				ifTrue: [ self assert: newMorph nextSibling == nil ]
				ifFalse: [ 
					newMorph nextSibling: lc nextSibling.
					lc nextSibling: newMorph ] ].
	self assert: newMorph nextSibling ~= newMorph.
	self isExpanded
		ifTrue: [ 
			container scroller addAllMorphs: {newMorph} after: nc.
			container adjustSubmorphPositions ]