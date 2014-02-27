execution
execute
	| name sItem |
	sItem := requestor selectedNode item.
	name := sItem asString.
	name notNil
		ifTrue: [ 
			Smalltalk globals organization removeCategory: name.
			sItem rpackage removeClassTag: name ].
	requestor selectPathForAbstractItem: sItem parent