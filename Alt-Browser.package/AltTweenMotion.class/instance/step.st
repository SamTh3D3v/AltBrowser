animating
step
	"Do the action for now."

	self action value: ( self at: Time millisecondClockValue ).
	^ self atEnd
		ifTrue: [  ]
		ifFalse: [ self ]