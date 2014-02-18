items creation
buildDiffCodePane
	| old new |
	old := listIndex = changeList size
		ifTrue: [ nil ]
		ifFalse: [ changeList at: listIndex + 1 ].
	new := changeList at: listIndex ifAbsent: [ nil ].
	^ new
		ifNil: [ self buildDiffMorphFromOldString: '' toNewString: '' contextClass: nil ]
		ifNotNil: [ 
			self
				buildDiffMorphFromOldString: (old ifNil: [ '' ] ifNotNil: [ old source ])
				toNewString: new source
				contextClass: new actualClass ]