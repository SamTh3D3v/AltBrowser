user interface
expandAllSuchThat: aBlock
	self root
		anySatisfy:
			[ :each | 
			(aBlock value: each)
				ifTrue: [ each expand ].
			false ]