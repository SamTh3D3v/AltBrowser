*Alt-Browser
removeItem: aNode
	| found |
	found := self findItem: aNode.
	found isNil
		ifFalse: [ 
			found recursiveDelete.
			container adjustSubmorphPositions ].
	^ found