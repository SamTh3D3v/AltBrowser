tree accessing
anySatisfy: aBlock
	self contents
		do:
			[ :each | 
			(each anySatisfy: aBlock)
				ifTrue: [ ^ true ] ].
	^ false