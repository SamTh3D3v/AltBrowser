*alt-browser
addItem: aNode
	"Add a submorph for that item. Sometime, the item may already be there; it depends on how the code goes through this. Modified to note where the node is to be put (newItemNode)."

	"Reimplemented short version, but there is still a problem, which is the same as the long version : in some cases, adding a method to an empty protocol change the state of the empty protocol to non-empty (arrow), opens it (arrow to the bottom), but the method doesn't appear."

	self recursiveRefreshExpandedState.
	container adjustSubmorphPositions
	
	"receiver is the target parent node morph."
	
	"As of .41, is still buggy. The invariant is being checked. Chasing an incorrect case of addItem (add a method on a new protocol or to one which is closed). Apparently this may have been corrected. Not! There is a possibility which is to keep track of opened child of the parent node (destroy all children, then recreate them), but it's hard to make sense of it and it doesn't seems to be ready for a partial update."	"| newMorph lc nc i j |
	(self findItem: aNode item) ifNotNil: [ ^ self ].
	self isExpanded
		ifFalse: [ 
			self refreshExpandedState.
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
			[ nc firstChild notNil and: [nc isExpanded ] ] whileTrue: [ nc := nc lastChild ] ].
	self assert: (complexContents model isKindOf: PluggableTreeMorph).
	newMorph := container indentingItemClass basicNew
		initWithContents: (PluggableTreeItemNode with: aNode model: complexContents model)
		prior: nil
		forList: container
		indentLevel: self indentLevel + 1.
	lc isNil
		ifTrue: [ 
			firstChild notNil
				ifTrue: [ newMorph nextSibling: firstChild ].
			firstChild := newMorph.
			self assert: self nextSibling ~= newMorph ]
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
			container adjustSubmorphPositions ]"