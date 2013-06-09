actions
accept: aText notifying: aController
	| res |
	res := [ 
	UndefinedObject evaluatorClass new
		evaluate: (ReadStream on: aText)
		in: nil
		to: nil
		notifying: aController
		ifFail: [ ^ nil ]
		logged: true ]
		on: OutOfScopeNotification
		do: [ :ex | ex resume: true ].
	res notNil
		ifTrue: [ 
			| r |
			AltBrowser roots detect: [ :aRoot | (r := aRoot findClass: res) notNil ].
			^ r ].
	^ nil