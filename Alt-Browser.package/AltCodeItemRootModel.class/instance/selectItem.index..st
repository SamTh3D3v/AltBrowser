selection
selectItem: anItem index: anIndex
	model
		ifNotNil:
			[ model textMorph
				ifNotNil: [ :t | 
					t hasUnacceptedEdits
						ifTrue: [ ^ self ] ] ].
	super selectItem: anItem index: anIndex