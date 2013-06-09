private
reset
	treeModel isNil
		ifFalse: [ 
			treeModel roots: self getRootItems.
			textModel text: ''.
			textModel behavior: nil.
			textModel aboutToStyle: false ].
	history := nil