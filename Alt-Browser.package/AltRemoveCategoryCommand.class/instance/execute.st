execution
execute
	| name sItem |
	sItem := requestor selectedNode item.
	name := sItem asString.
	self halt.
	name notNil
		ifTrue: [ 
			Smalltalk globals organization removeCategory: name.
			sItem item package removeClassTag: name ].
	requestor selectPathForAbstractItem: sItem parentNode