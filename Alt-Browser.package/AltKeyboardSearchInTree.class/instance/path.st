accessing
path
	path
		ifNil: [ 
			path := OrderedCollection new.
			path add: String new ].
	^ path