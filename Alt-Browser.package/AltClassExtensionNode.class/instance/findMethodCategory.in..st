querying
findMethodCategory: aCategory in: aClass
	"As an extension, we are a protocol (or multiple ones, in fact). Return the parent node, it's safer when the class loses its last extension selector (it's a bit of a hack, really)."

	^ (self itemClass == aClass and: [ self parent rpackage isYourClassExtension: aCategory ])
		ifTrue: [ 
			self contents isEmpty
				ifTrue: [ self parent ]
				ifFalse: [ self ] ]
		ifFalse: [ nil ]