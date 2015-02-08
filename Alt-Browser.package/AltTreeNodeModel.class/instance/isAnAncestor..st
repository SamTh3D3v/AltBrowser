testing
isAnAncestor: aNode
	"Check if one parent is equal to us."

	self == aNode
		ifTrue: [ ^ false ].
	parentNode ifNil: [ ^ false ].
	parentNode == aNode
		ifTrue: [ ^ true ].
	^ parentNode isAnAncestor: aNode