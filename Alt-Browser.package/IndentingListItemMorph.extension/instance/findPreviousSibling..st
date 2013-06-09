*alt-browser
findPreviousSibling: aNode
	| found |
	self
		withSiblingsDo: [ :each | 
			each nextSibling == aNode
				ifTrue: [ ^ each ] ].
	self
		withSiblingsDo: [ :each | 
			each firstChild notNil
				ifTrue: [ 
					found := each firstChild findPreviousSibling: aNode.
					found notNil
						ifTrue: [ ^ found ] ] ].
	^ nil