*Alt-Browser
findItem: aNode
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