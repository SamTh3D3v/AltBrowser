user interface
expandAllSuchThat: aBlock
	self root
		anySatisfy:
			[ :each | 
			(aBlock value: each)
				ifTrue: [ each isExpanded: true ].
			false ].
	self root changed