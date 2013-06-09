*Alt-Browser
recursiveRefreshExpandedState
	"Trying to do a better refreshExpandedState which remembers expanded children."

	| toDelete c final currentlyExpanded |
	toDelete := OrderedCollection new.
	currentlyExpanded := OrderedCollection new.
	firstChild
		ifNotNil: [ 
			firstChild
				withSiblingsDo: [ :aNode | 
					currentlyExpanded addAll: aNode findExpanded.
					aNode recursiveAddTo: toDelete ] ].
	container noteRemovalOfAll: toDelete.
	(isExpanded and: [ complexContents hasContents ])
		ifFalse: [ ^ self changed ].
	(c := complexContents contents) isEmpty
		ifTrue: [ ^ self changed ].
	final := OrderedCollection new.
	self addChildrenForList: container addingTo: final withExpandedItems: currentlyExpanded.
	container scroller addAllMorphs: final after: self