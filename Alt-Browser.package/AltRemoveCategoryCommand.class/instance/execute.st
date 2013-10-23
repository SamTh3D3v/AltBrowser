execution
execute
	| name sItem |
	sItem := requestor selectedNode item.
	name := sItem title.
	name notNil
		ifTrue: [ 
			Smalltalk globals organization removeCategory: name.
			sItem item package removeClassTag: name ].
	requestor selectPathForAbstractItem: sItem parentNode