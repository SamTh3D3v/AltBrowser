as yet unclassified
accept: aText
	^ [ 
	UndefinedObject evaluatorClass new
		evaluate: (ReadStream on: aText)
		in: nil
		to: nil
		notifying: nil
		ifFail: [ ^ nil ]
		logged: true ]
		on: OutOfScopeNotification
		do: [ :ex | ex resume: true ]