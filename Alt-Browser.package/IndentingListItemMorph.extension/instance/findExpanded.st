*Alt-Browser
findExpanded
	"Get all expanded items among children recursively."

	| currentlyExpanded |
	currentlyExpanded := OrderedCollection new.
	firstChild notNil
		ifTrue: [ firstChild withSiblingsDo: [ :aNode | currentlyExpanded addAll: aNode findExpanded ] ].
	self isExpanded
		ifTrue: [ currentlyExpanded add: self ].
	^ currentlyExpanded