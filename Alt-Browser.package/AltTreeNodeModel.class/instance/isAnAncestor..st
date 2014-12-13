testing
isAnAncestor: aNode
	"Check if one parent is equal to us."

	self == aNode
		ifTrue: [ ^ true ].
	parentNode ifNil: [ ^ false ].
	^ parentNode isAnAncestor: aNode