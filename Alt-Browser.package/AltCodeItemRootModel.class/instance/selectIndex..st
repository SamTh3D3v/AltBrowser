selection
selectIndex: anIndex
	model
		ifNotNil: [ model textMorph
				ifNotNil: [ :t | 
					t hasUnacceptedEdits
						ifTrue: [ t flash.
							^ self ] ] ].
	super selectIndex: anIndex