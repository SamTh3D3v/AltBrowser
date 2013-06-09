updating
aMethodAdded: anEvent
	"Ok, a method was added. Does not mean modify."

	| node r s c |
	node := self rootItems detect: [ :e | (c := e findClass: anEvent itemClass) notNil ] ifNone: [ ^ self ].
	c hasContents
		ifTrue: [ 
			(r := c findMethodCategory: anEvent itemProtocol) isNil
				ifTrue: [ ^ self ].
			r hasContents
				ifTrue: [ 
					r contents add: (s := r childNodeFromItem: anEvent itemSelector).
					self allInstances do: [ :each | each addNode: s ] ] ]