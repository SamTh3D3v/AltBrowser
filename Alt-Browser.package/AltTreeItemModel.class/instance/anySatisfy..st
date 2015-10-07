tree accessing
anySatisfy: aBlock
	(aBlock value: self)
		ifTrue: [ ^ true ].
	self contents
		do:
			[ :each | 
			(each anySatisfy: aBlock)
				ifTrue: [ ^ true ] ].
	^ false