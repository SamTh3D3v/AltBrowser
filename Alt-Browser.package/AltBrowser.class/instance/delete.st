initialization
delete
	treeModel notNil
		ifTrue: [ treeModel roots: #() ].
	super delete.
	self release