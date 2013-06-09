*Alt-Browser
removeItem: aNode
	| found |
	self
		withSiblingsDo: [ :each | 
			each complexContents item == aNode
				ifTrue: [ found := each ] ].
	found isNil
		ifTrue: [ 
			self
				withSiblingsDo: [ :each | 
					each firstChild notNil
						ifTrue: [ each firstChild removeItem: aNode ] ] ]
		ifFalse: [ 
			found recursiveDelete.
			container adjustSubmorphPositions ]