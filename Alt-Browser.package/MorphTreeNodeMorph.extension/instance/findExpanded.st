*alt-browser
findExpanded
	"Get all expanded items among children recursively. Remember that we are talking about items and not MorphTreeNodeMorph instances."

	| currentlyExpanded |
	currentlyExpanded := OrderedCollection new.
	self isExpanded
		ifTrue: [ currentlyExpanded add: self complexContents ].
	firstChild notNil
		ifTrue: [ firstChild withSiblingsDo: [ :aNode | currentlyExpanded addAll: aNode findExpanded ] ].
	^ currentlyExpanded