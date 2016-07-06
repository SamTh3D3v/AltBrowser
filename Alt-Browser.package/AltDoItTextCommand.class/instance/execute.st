execution
execute
	"Treat the current selection as an expression; evaluate it."

	"Note: I could use the environment in the compiler creation; there is a possibility
	for that as visible in the Behavior>>#compiler implementation."

	| result rcvr ctxt |
	rcvr := self doItReceiver.
	ctxt := self doItContext.
	result := [ 
	rcvr class compiler
		evaluate: (ReadStream on: target trueSelection)
		in: ctxt
		to: rcvr
		notifying: target
		ifFail: [ 
			target flash.
			^ nil ]
		logged: true	"don't set it to self.. The receiver can be destroyed as a result of evaluateSelection" ]
		on: SyntaxErrorNotification
		do: [ :ex | ex resume: true ].
	^ result