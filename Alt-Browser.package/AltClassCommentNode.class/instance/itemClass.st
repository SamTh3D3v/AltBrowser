accessing
itemClass
	^ Smalltalk at: code ifAbsent: [ UndefinedObject ]