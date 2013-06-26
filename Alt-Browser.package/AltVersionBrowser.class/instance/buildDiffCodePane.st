private
buildDiffCodePane
	| old new |
	listIndex = changeList size
		ifTrue: [ old := nil ]
		ifFalse: [ old := changeList at: listIndex + 1 ].
	new := changeList at: listIndex ifAbsent: [ nil ].
	^ new
		ifNil: [ self buildDiffMorphFromOldString: '' toNewString: '' contextClass: nil ]
		ifNotNil: [ 
			self
				buildDiffMorphFromOldString: (old ifNil: [ '' ] ifNotNil: [ old source ])
				toNewString: new source
				contextClass: new actualClass ]