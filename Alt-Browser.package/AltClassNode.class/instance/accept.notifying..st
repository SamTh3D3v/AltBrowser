actions
accept: aText notifying: aController
	"The base code just evaluate the expression."
	
	"We will add some RB parsing to really check what is happening, and, in some cases, change the evaluation to a specific RB command (undoable)."
	 
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
			AltBrowser rootItems detect: [ :aRoot | (r := aRoot findClass: res) notNil] ifNone: [nil].
			^ r ].
	^ nil