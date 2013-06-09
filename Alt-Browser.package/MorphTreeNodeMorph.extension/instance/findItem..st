*alt-browser
findItem: aNode
	"Search for a complex contents item."

	| found |
	self
		withSiblingsDo: [ :each | 
			each complexContents item == aNode
				ifTrue: [ ^ each ] ].
	self
		withSiblingsDo: [ :each | 
			each firstChild notNil
				ifTrue: [ 
					found := each firstChild findItem: aNode.
					found notNil
						ifTrue: [ ^ found ] ] ].
	^ nil