selection
selectIndex: anIndex
	model
		ifNotNil: [ model textMorph ifNotNil: [:t | t hasUnacceptedEdits
				ifTrue: [ ^ self ] ] ].
	super selectIndex: anIndex