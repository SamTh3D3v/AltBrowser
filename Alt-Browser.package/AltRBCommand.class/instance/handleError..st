error handling
handleError: anException
	"I'm sure this is wrong and the error should not resume."

	anException actionBlock isNil
		ifTrue: [ self inform: anException messageText ]
		ifFalse: [ 
			(self confirm: anException messageText)
				ifTrue: [ anException actionBlock value ] ].
	anException resume