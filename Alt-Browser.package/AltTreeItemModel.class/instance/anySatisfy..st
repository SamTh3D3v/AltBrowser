tree accessing
anySatisfy: aBlock
	(parent notNil and: [ aBlock value: self ])
		ifTrue: [ ^ true ].
	self contents
		do: [ :each | 
			(each anySatisfy: aBlock)
				ifTrue: [ ^ true ] ].
	^ false