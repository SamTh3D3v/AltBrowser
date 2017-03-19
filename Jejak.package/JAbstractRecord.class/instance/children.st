private
children
	children isNil ifTrue: [children := LinkedList new].
	^children