accessing
itemClass
	^ Smalltalk at: self item ifAbsent: [ UndefinedObject ]