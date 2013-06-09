initialize-release
delete
	tree notNil
		ifTrue: [ tree roots: #() ].
	self release