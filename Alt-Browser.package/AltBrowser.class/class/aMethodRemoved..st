updating
aMethodRemoved: anEvent
	"Ok, a method was removed."

	| node r s c |
	node := self rootItems detect: [ :e | (c := e findClass: anEvent itemClass) notNil ] ifNone: [ ^ self ].
	c hasContents
		ifTrue: [ 
			(r := c findMethodCategory: anEvent itemProtocol) isNil
				ifTrue: [ ^ self ].
			r hasContents
				ifTrue: [ 
					r contents remove: (s := r findMethod: anEvent itemSelector).
					self allInstances do: [ :each | each removeNode: s ] ] ]