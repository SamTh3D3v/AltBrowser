execution
execute
	| name sItem found |
	sItem := requestor selectedNode item.
	name := sItem title.
	name notNil
		ifTrue: [ Smalltalk globals organization removeCategory: name ].
	requestor selectPathForAbstractItem: sItem parentNode