actions
accept: aText notifying: aController
	| res |
	res := [ 
	UndefinedObject compilerClass new
		evaluate: (ReadStream on: aText)
		in: nil
		to: nil
		notifying: aController
		ifFail: [ ^ nil ]
		logged: true ]
			on: SyntaxErrorNotification
		do: [ :ex | ex resume: true ].
	res notNil
		ifTrue: [ 
			| r |
			AltBrowser rootItems detect: [ :aRoot | (r := aRoot findClass: res) notNil ].
			^ r ].
	^ nil