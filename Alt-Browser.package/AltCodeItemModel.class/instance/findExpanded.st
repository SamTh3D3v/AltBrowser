protocol
findExpanded
	"Return all children which are expanded."

	| currentlyExpanded |
	currentlyExpanded := OrderedCollection new.
	self isExpanded
		ifTrue: [ 
			currentlyExpanded add: self.
			contents do: [ :aNode | currentlyExpanded addAll: aNode findExpanded ] ].
	^ currentlyExpanded