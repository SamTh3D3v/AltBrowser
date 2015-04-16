accessing
root
	Root ifNil: [ self createRootItems ].
	^ Root