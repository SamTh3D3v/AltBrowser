selection
selectIndex: anIndex
	model
		ifNotNil: [ model textMorph hasUnacceptedEdits
				ifTrue: [ ^ self ] ].
	super selectIndex: anIndex