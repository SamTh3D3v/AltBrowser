accessing
updateNode: aNode
	| r result |
	rootsHolder contents detect: [ :rootItem | (result := rootItem findItem: aNode) notNil ] ifNone: [ ^ self ].
	result notNil
		ifTrue: [ 
			r := (self widget scroller submorphs at: 1) findItem: result.
			r notNil
				ifTrue: [ r contents: r complexContents asString ] ]