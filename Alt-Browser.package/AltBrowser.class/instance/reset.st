private
reset
	treeModel isNil
		ifFalse: [ 
			treeModel roots: self getRootItems.
			textModel pendingText: '' ].
	history := nil