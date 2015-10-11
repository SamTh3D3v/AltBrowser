testing
isAnAncestor: anItem
	"Check if one parent is equal to us."

	self == anItem
		ifTrue: [ ^ false ].
	parent ifNil: [ ^ false ].
	parent == anItem
		ifTrue: [ ^ true ].
	^ parent isAnAncestor: anItem