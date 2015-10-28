drag and drop
dropElement: aPassenger index: anId
	anId = 0
		ifTrue: [ ^ self ].
	(self at: anId) item dropItem: aPassenger