execution
execute
	"Treat the current selection as an expression; evaluate it."

	| result rcvr ctxt |
	rcvr := self doItReceiver.
	ctxt := self doItContext.
	result := [ 
	rcvr class compilerClass new
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