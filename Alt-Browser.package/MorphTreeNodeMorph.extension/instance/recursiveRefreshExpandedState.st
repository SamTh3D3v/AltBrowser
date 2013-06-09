*alt-browser
recursiveRefreshExpandedState
	"Trying to do a better refreshExpandedState which remembers expanded children."

	| toDelete final currentlyExpanded |
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
	(complexContents contents) isEmpty
		ifTrue: [ ^ self changed ].
	final := OrderedCollection new.
	self addChildrenForList: container addingTo: final withExpandedNodes: currentlyExpanded.
	toDelete do: [ :each | each delete ].
	container scroller addAllMorphs: final after: self